package salarycalc;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/salarycalc")
public class salarycalc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	double esi, pf;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("b1");
		String empcode = request.getParameter("b2");
		String email=request.getParameter("b3");		
		String des = request.getParameter("g1");
		System.out.println(des);
		String loc = request.getParameter("g2");
		double gp=Double.parseDouble(request.getParameter("pay"));
		String T_month = request.getParameter("month");
		double Nghtallow = 2500;
		Random r = new Random();
		int date = r.nextInt(30);
		int month = r.nextInt(12);
		int lop = r.nextInt(3);
		double esi, pf;
		PrintWriter pw = response.getWriter();

		pw.print("<h1 style=color:red align=center>" + name + "'s" + " Salary Slip</h1>");
		pw.print("<h2 align=center>Employee Salary for the month of " + T_month + " 2024</h2>");
		pw.print("<body style=background-color:lightblue>");
		pw.print("<table border=2 color:lightblue cellspacing=8 width=450 height=100>");
		pw.print("<tr>");
		pw.print("<td><b>Employee Name </b> ");
		pw.print("<td>" + name + "</td>");
		pw.print("</tr>");
		pw.print("<tr>");
		pw.print("<td><b>Email</b> ");
		pw.print("<td>" + email + "</td>");
		pw.print("</tr>");
		pw.print("<tr>");
		pw.print("<td><b>Employee Code </b>");
		pw.print("<td>" + empcode + "</td>");
		pw.print("</tr>");
		pw.print("<tr>");
		pw.print("<td><b>Date of Joining </b>");
		pw.print("<td>" + date + " / " + month + " / " + "2023</td>");
		pw.print("</tr>");
		pw.print("<tr><td><b> Location </b></td>");
		pw.print("<td>" + loc + "</td>");
		pw.print("</tr>");
		pw.print("<tr>");
		pw.print("<td><b>Designation </b> ");
		pw.print("<td>" + des + "</td>");
		pw.print("</tr>");
		pw.print("</table>");
		pw.print("<table align=right border=2 width=400 height=150>");
		pw.print("<tr>");
		pw.print("<th><b>Leave Details</b></th>");
		pw.print("</tr>");
		pw.print("<tr>");
		pw.print("<th><b>Total Attend Days:</b></th>");
		pw.print("<td>" + 30 + "</td>");
		pw.print("</tr>");
		pw.print("<tr>");
		pw.print("<th><b>Number of Days Paid:</b></th>");
		pw.print("<td>" + 29 + "</td>");
		pw.print("</tr>");
		if (lop > 0) {
			pw.print("<tr>");
			pw.print("<th><b> Lose of Pay:</b></th>");
			pw.print("<td>" + lop + "</td>");
			pw.print("</tr>");
			pw.print("</table>");
		} else if (lop > 3) {
			pw.print("<tr>");
			pw.print("<th><b> Lose of Pay :</b></th>");
			pw.print("<td>" + lop + "</td>");
			pw.print("</tr>");
			pw.print("</table>");
		} else {
			pw.print("<tr>");
			pw.print("<th><b> Lose of Pay:</b></th>");
			pw.print("<td>" + lop + "</td>");
			pw.print("</tr>");
			pw.print("</table>");
		}
		pw.print("<table  align=center border=2 cellspacing=8 width=600 height=200 >");
		pw.print("<tr>");
		pw.print("<th>Earnings </th>");
		pw.print("<th> Amount Rs. </th>");
		pw.print("</tr>");
		pw.print("<tr>");
		pw.print("<th><b> Deduction </b></th>");
		pw.print("</tr>");
		pw.print("<tr><td>Nightshift Allowance</td>");
		pw.print("<td>" + Nghtallow + "</td>");
		pw.print("</tr>");
		if (gp>30000) {
			esi = 1560;
			pf = 3730;
			pw.print("<tr><td>ESI </td>");
			pw.print("<td>" + esi + "</td>");
			pw.print("<tr><td>Provident Fund </td>");
			pw.print("<td>" + pf + "</td>");
			pw.print("<tr>");
			pw.print("<td><b>Gross Salary</b> ");
			pw.print("<td>" + gp + "</td>");
			pw.print("</tr>");
			pw.print("<tr>");
			pw.print("<th><b>Net Salary</b></th>");
			pw.print("<td>" + (gp - esi - pf) + " </td>");
		} else if (gp>50000) {
			esi = 2520;
			pf = 5750;
			pw.print("<tr><td>ESI </td>");
			pw.print("<td>" + esi + "</td>");
			pw.print("<tr><td>Provident Fund </td>");
			pw.print("<td>" + pf + "</td>");
			pw.print("<tr>");
			pw.print("<td><b>Gross Salary</b> ");
			pw.print("<td>" + gp + "</td>");
			pw.print("</tr>");
			pw.print("<tr>");
			pw.print("<th><b>Net Salary</b></th>");
			pw.print("<td>" + (gp - esi - pf) + " </td>");
		} else if (gp>80000) {
			esi = 6900;
			pf = 9590;
			pw.print("<tr><td>ESI </td>");
			pw.print("<td>" + esi + "</td>");
			pw.print("<tr><td>Provident Fund </td>");
			pw.print("<td>" + pf + "</td>");
			pw.print("<tr>");
			pw.print("<td><b>Gross Salary</b> ");
			pw.print("<td>" + gp + "</td>");
			pw.print("</tr>");
			pw.print("<tr>");
			pw.print("<th><b>Net Salary</b></th>");
			pw.print("<td>" + (gp - esi - pf) + " </td>");
		} else {
			esi = 1063;
			pf = 2579;
			pw.print("<tr><td>ESI </td>");
			pw.print("<td>" + esi + "</td>");
			pw.print("<tr><td>Provident Fund </td>");
			pw.print("<td>" + pf + "</td>");
			pw.print("<tr>");
			pw.print("<td><b>Gross Salary</b> ");
			pw.print("<td>" + gp + "</td>");
			pw.print("</tr>");
			pw.print("<tr>");
			pw.print("<th><b>Net Salary</b></th>");
			pw.print("<td>" + (gp - esi - pf) + " </td>");
		}
		pw.print("</tr>");
		pw.print("</table>");
		pw.print("<p align=right>");
		pw.print("<button onclick=window.print()>Print PDF</button>");
		pw.print("</p>");
		pw.print("</body>");
	}

}

