const express = require("express");
const multer = require("multer");
const xlsx = require("xlsx");
const fs = require("fs"); // Import file system module
const mysql = require("mysql2"); // install this on the node modules of the front end
const router = express.Router();

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "earist_hris",
});

// CRUD routes (e.g., Create, Read, Update, Delete)
router.get("/data", (req, res) => {
  const query = `SELECT * FROM  voluntary_work_table`;
  db.query(query, (err, result) => {
    if (err) return res.status(500).send(err);
    res.status(200).send(result);
  });
});

// more CRUD routes...
// Read (Get All Items)
router.get("/voluntary-work", (req, res) => {
  const query = "SELECT * FROM  voluntary_work_table";
  db.query(query, (err, result) => {
    if (err) return res.status(500).send(err);
    res.status(200).send(result);
  });
});

// Create (Add New Item)
router.post("/voluntary-work", (req, res) => {
  const { nameAndAddress, dateFrom, dateTo, numberOfHours, natureOfWork, person_id } = req.body;
  const query = "INSERT INTO  voluntary_work_table (nameAndAddress, dateFrom, dateTo, numberOfHours, natureOfWork, person_id) VALUES (?, ?, ?, ?, ?, ?)";
  db.query(query, [nameAndAddress, dateFrom, dateTo, numberOfHours, natureOfWork, person_id], (err, result) => {
    if (err) return res.status(500).send(err);
    res.status(201).send({ message: "Item created", id: result.insertId });
  });
});

// Update Item
router.put("/voluntary-work/:id", (req, res) => {
  const { nameAndAddress, dateFrom, dateTo, numberOfHours, natureOfWork, person_id } = req.body;
  const { id } = req.params;
  const query = "UPDATE voluntary_work_table SET nameAndAddress = ?, dateFrom = ?, dateTo = ?, numberOfHours = ?, natureOfWork = ?, person_id = ?  WHERE id = ?";
  db.query(query, [nameAndAddress, dateFrom, dateTo, numberOfHours, natureOfWork, person_id, id], (err, result) => {
    if (err) return res.status(500).send(err);
    res.status(200).send({ message: "Item updated" });
  });
});

// Delete Item
router.delete("/voluntary-work/:id", (req, res) => {
  const { id } = req.params;
  const query = "DELETE FROM voluntary_work_table WHERE id = ?";
  db.query(query, [id], (err, result) => {
    if (err) return res.status(500).send(err);
    res.status(200).send({ message: "Item deleted" });
  });
});

const uploads = multer({ dest: "uploads/" });
// Convert Excel date to normalized UTC date
function excelDateToUTCDate(excelDate) {
  const date = new Date((excelDate - 25569) * 86400 * 1000);
  return new Date(Date.UTC(date.getFullYear(), date.getMonth(), date.getDate()));
}

router.post("/upload_voluntary_work_table", uploads.single("file"), (req, res) => {
  if (!req.file) {
    return res.status(400).json({ error: "No file uploaded" });
  }

  try {
    // Read the uploaded XLS file
    const workbook = xlsx.readFile(req.file.path);
    const sheet_name = workbook.SheetNames[0];
    const sheet = xlsx.utils.sheet_to_json(workbook.Sheets[sheet_name]);

    // Log the uploaded data for troubleshooting
    console.log("Uploaded sheet data:", sheet);

    // Insert data into 'items' table
    sheet.forEach((row) => {
      const nameAndAddress = row.nameAndAddress;
      const dateFrom = excelDateToUTCDate(row.dateFrom);
      const formattedDateVoluntaryFrom = dateFrom.toISOString().split("T")[0];
      const dateTo = excelDateToUTCDate(row.dateTo);
      const formattedDateVoluntaryTo = dateTo.toISOString().split("T")[0];
      const numberOfHours = row.numberOfHours;
      const natureOfWork = row.natureOfWork;

      // Prepare SQL statement for insertion into 'items' table
      const sql = `
        INSERT INTO voluntary_work_table (nameAndAddress, dateFrom, dateTo, numberOfHours, natureOfWork) 
        VALUES (?, ?, ?, ?, ?)
      `;
      db.query(sql, [nameAndAddress, formattedDateVoluntaryFrom, formattedDateVoluntaryTo, numberOfHours, natureOfWork], (err, result) => {
        if (err) {
          console.error("Error inserting data:", err);
          return;
        }
        console.log("Data inserted successfully into items table:", result);
      });
    });

    // Send response after insertion
    res.json({ message: "File uploaded and data inserted successfully into items table" });
  } catch (error) {
    console.error("Error processing XLS file:", error);
    res.status(500).json({ error: "Error processing XLS file" });
  } finally {
    // Delete the uploaded file to save space on the server
    fs.unlink(req.file.path, (err) => {
      if (err) {
        console.error("Error deleting uploaded file:", err);
      } else {
        console.log("Uploaded file deleted");
      }
    });
  }
});

module.exports = router;
