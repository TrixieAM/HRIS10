import React, { useEffect, useState } from "react";
import axios from "axios";
import {
  Table,
  TableHead,
  TableBody,
  TableRow,
  TableCell,
  TableContainer,
  Paper,
  Typography,
  Container,
  Alert,
  Button,
  TextField,
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
} from "@mui/material";

const PayrollEdit = () => {
  const [data, setData] = useState([]);
  const [error, setError] = useState("");
  const [editDialogOpen, setEditDialogOpen] = useState(false);
  const [formData, setFormData] = useState({});

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const res = await axios.get("http://localhost:5000/api/payroll-with-remittance");

      const seen = new Set();
      const uniqueData = [];

      for (const item of res.data) {
        if (!seen.has(item.employeeNumber)) {
          seen.add(item.employeeNumber);
          uniqueData.push(item);
        } else {
          setError(`Duplicate entry found for Employee Number: ${item.employeeNumber}`);
        }
      }

      setData(uniqueData);
    } catch (err) {
      console.error("Error fetching payroll data:", err);
      setError("An error occurred while fetching the payroll data.");
    }
  };

  const handleEditClick = (row) => {
    setFormData({ ...row });
    setEditDialogOpen(true);
  };

  const handleDeleteClick = async (id) => {
    try {
      await axios.delete(`http://localhost:5000/api/payroll/${id}`);
      setData((prev) => prev.filter((row) => row.id !== id));
    } catch (err) {
      console.error("Delete error:", err);
      setError("Failed to delete payroll record.");
    }
  };

  const handleDialogClose = () => {
    setEditDialogOpen(false);
    setFormData({});
  };

  const handleFormChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleUpdateSubmit = async () => {
    console.log("Sending data to backend:", formData); // Debug log
    try {
      const response = await axios.put(`http://localhost:5000/api/payroll/${formData.id}`, formData);
      console.log("Response:", response.data); // Log the response to confirm successful update
      setData((prev) =>
        prev.map((row) => (row.id === formData.id ? formData : row))
      );
      setEditDialogOpen(false);
    } catch (err) {
      console.error("Update error:", err.response ? err.response.data : err);
      setError("Failed to update payroll record.");
    }
  };
  
  
  

  return (
    <Container>
      <Typography
        variant="h4"
        sx={{
          fontWeight: "regular",
          backgroundColor: "#6D2323",
          color: "#fff",
          padding: 2,
          borderRadius: 2,
          marginBottom: 2,
        }}
      >
        Payroll Record
        <Typography variant="body2" sx={{ m: 0 }}>
          Review and edit all payroll records
        </Typography>
      </Typography>

      {error && <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>}

      <TableContainer component={Paper} sx={{ maxHeight: 500 }}>
                <Table stickyHeader>
                  <TableHead>
                    <TableRow>
                      <TableCell>No.</TableCell>
                      <TableCell>Employee Number</TableCell>
                      <TableCell>Start Date</TableCell>
                      <TableCell>End Date</TableCell>
                      <TableCell>Name</TableCell>
                      <TableCell>Position</TableCell>
                      <TableCell>Rate NBC 188</TableCell>
                      <TableCell>RNBC 594</TableCell>
                      <TableCell>Increment</TableCell>
                      <TableCell>Gross Salary</TableCell>
                      <TableCell>ABS</TableCell>
                      <TableCell>H</TableCell>
                      <TableCell>M</TableCell>
                      <TableCell>S</TableCell>
                      <TableCell>Net Salary</TableCell>
                      <TableCell>Withholding Tax</TableCell>
                      <TableCell>Personal Life Ret. Ins.</TableCell>
                      <TableCell>Total GSIS Deductions</TableCell>
                      <TableCell>Total Pag-ibig Deductions</TableCell>
                      <TableCell>PhilHealth</TableCell>
                      <TableCell>Total Other Deductions</TableCell>
                      <TableCell>Total Deductions</TableCell>
                      <TableCell>1st Pay</TableCell>
                      <TableCell>2nd Pay</TableCell>
                      <TableCell>RT Ins.</TableCell>
                      <TableCell>EC</TableCell>
                      <TableCell>GSIS Salary Loan</TableCell>
                      <TableCell>GSIS Policiy Loan</TableCell>
                      <TableCell>GFAL</TableCell>
                      <TableCell>CPL</TableCell>
                      <TableCell>MPL</TableCell>
                      <TableCell>MPL LITE</TableCell>
                      <TableCell>Emergency Loan</TableCell>
                      <TableCell>Date Created</TableCell>
                    </TableRow>
                  </TableHead>
      
                  <TableBody>
                    {data.length > 0 ? (
                      data.map((row, index) => (
                        <TableRow key={`${row.employeeNumber}-${row.dateCreated}`}>
                          <TableCell>{index + 1}</TableCell>
                          <TableCell>{row.employeeNumber}</TableCell>
                          <TableCell>{row.startDate}</TableCell>
                          <TableCell>{row.endDate}</TableCell>
                          <TableCell>{row.lastName}, {row.firstName} {row.middleName}</TableCell>
                          <TableCell>{row.position}</TableCell>
                          <TableCell>{row.rateNbc188}</TableCell>
                          <TableCell>{row.nbc594}</TableCell>
                          <TableCell>{row.increment}</TableCell>
                          <TableCell>{row.grossSalary}</TableCell>
                          <TableCell>{row.abs}</TableCell>
                          <TableCell>{row.h}</TableCell>
                          <TableCell>{row.m}</TableCell>
                          <TableCell>{row.s}</TableCell>
                          <TableCell>{row.netSalary}</TableCell>
                          <TableCell>{row.withholdingTax}</TableCell>
                          <TableCell>{row.personalLifeRetIns}</TableCell>
                          <TableCell>{row.totalGsisDeds}</TableCell>
                          <TableCell>{row.totalPagibigDeds}</TableCell>
                          <TableCell>{row.philhealth}</TableCell>
                          <TableCell>{row.totalOtherDeds}</TableCell>
                          <TableCell>{row.totalDeductions}</TableCell>
                          <TableCell>{row.pay1st}</TableCell>
                          <TableCell>{row.pay2nd}</TableCell>
                          <TableCell>{row.rtIns}</TableCell>
                          <TableCell>{row.ec}</TableCell>
                          <TableCell>{row.gsisSalaryLoan}</TableCell>
                          <TableCell>{row.gsisPolicyLoan}</TableCell>
                          <TableCell>{row.gfal}</TableCell>
                          <TableCell>{row.cpl}</TableCell>
                          <TableCell>{row.mpl}</TableCell>
                          <TableCell>{row.mplLite}</TableCell>
                          <TableCell>{row.emergencyLoan}</TableCell>
                          <TableCell>{row.dateCreated}</TableCell>
                      
                  <TableCell align="center">
                    <Button
                      variant="outlined"
                      size="small"
                      color="primary"
                      sx={{ mr: 1 }}
                      onClick={() => handleEditClick(row)}
                    >
                      Edit
                    </Button>
                    <Button
                      variant="outlined"
                      size="small"
                      color="error"
                      onClick={() => handleDeleteClick(row.id)}
                    >
                      Delete
                    </Button>
                  </TableCell>
                </TableRow>
              ))
            ) : (
              <TableRow>
                <TableCell colSpan={24}>No data available.</TableCell>
              </TableRow>
            )}
          </TableBody>
        </Table>
      </TableContainer>

      {/* EDIT DIALOG */}
      <Dialog open={editDialogOpen} onClose={handleDialogClose} fullWidth maxWidth="md">
        <DialogTitle>Edit Payroll</DialogTitle>
        <DialogContent>
          <TextField
            label="Name"
            name="name"
            fullWidth
            margin="dense"
            value={formData.name || ""}
            onChange={handleFormChange}
          />
          <TextField
            label="Position"
            name="position"
            fullWidth
            margin="dense"
            value={formData.position || ""}
            onChange={handleFormChange}
          />
          <TextField
            label="Gross Salary"
            name="grossSalary"
            fullWidth
            margin="dense"
            value={formData.grossSalary || ""}
            onChange={handleFormChange}
          />
          <TextField
            label="Net Salary"
            name="netSalary"
            fullWidth
            margin="dense"
            value={formData.netSalary || ""}
            onChange={handleFormChange}
          />
          {/* You can add more fields here as needed */}
        </DialogContent>
        <DialogActions>
          <Button onClick={handleDialogClose} color="secondary">
            Cancel
          </Button>
          <Button onClick={handleUpdateSubmit} color="primary" variant="contained">
            Save Changes
          </Button>
        </DialogActions>
      </Dialog>
    </Container>
  );
};

export default PayrollEdit;
