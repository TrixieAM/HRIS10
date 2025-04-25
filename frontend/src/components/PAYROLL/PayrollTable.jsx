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
} from "@mui/material";

const Payroll = () => {
  const [data, setData] = useState([]);
  const [error, setError] = useState("");

  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await axios.get("http://localhost:5000/api/payroll-with-remittance");
        console.log("API Response:", res.data);

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
        console.error("Error fetching payroll data with remittance:", err);
        setError("An error occurred while fetching the payroll data.");
      }
    };

    fetchData();
  }, []);

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
          Review all payroll records
        </Typography>
      </Typography>

      {error ? (
        <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>
      ) : (
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
                    <TableCell>{row.name}</TableCell>
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
                  </TableRow>
                ))
              ) : (
                <TableRow>
                  <TableCell colSpan={33}>Loading or No Data Available</TableCell>
                </TableRow>
              )}
            </TableBody>
          </Table>
        </TableContainer>
      )}
    </Container>
  );
};

export default Payroll;
