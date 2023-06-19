package rw.ac.rca.webapp.web;


import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import rw.ac.rca.webapp.dao.CourseDAO;
import rw.ac.rca.webapp.dao.MarksDAO;
import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.UserDAO;
import rw.ac.rca.webapp.dao.impl.CourseDAOImpl;
import rw.ac.rca.webapp.dao.impl.MarksDAOImpl;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.dao.impl.UserDAOImpl;
import rw.ac.rca.webapp.orm.Course;
import rw.ac.rca.webapp.orm.Mark;
import rw.ac.rca.webapp.orm.Student;
import rw.ac.rca.webapp.orm.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

public class Reports extends HttpServlet {
    private final MarksDAO marksDAO = MarksDAOImpl.getInstance();
    private final UserDAO userDAO = UserDAOImpl.getInstance();
    private final StudentDAO studentDAO = (StudentDAO) StudentDAOImpl.getInstance();
    private final CourseDAO courseDAO = CourseDAOImpl.getInstance();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String data = req.getParameter("data");
        Workbook workbook = new XSSFWorkbook();
        String filename = "";
        String location = "";
        if (data.equals("marks")) {
            filename = "Marks Report.xlsx";
            location = "marks";
            Sheet sheet = workbook.createSheet("Marks Report");
            Row row = sheet.createRow(0);
            row.createCell(0).setCellValue("ID");
            row.createCell(1).setCellValue("Student Name");
            row.createCell(2).setCellValue("Subject");
            row.createCell(3).setCellValue("Marks");

            List<Mark> marks = marksDAO.getAllMarks();
            sheet.setColumnWidth(1, 9000);
            sheet.setColumnWidth(2, 9000);
            for (Mark mark : marks) {
                row = sheet.createRow(sheet.getLastRowNum() + 1);
                row.createCell(0).setCellValue(mark.getId());
                row.createCell(1).setCellValue(mark.getStudentName());
                row.createCell(2).setCellValue(mark.getSubject());
                row.createCell(3).setCellValue(mark.getMarksObtained());
            }

        }
        else if (data.equals("students")) {
            location = "students";
            filename = "Students Report.xlsx";
            Sheet sheet = workbook.createSheet("Students Report");
            Row row = sheet.createRow(0);
            row.createCell(0).setCellValue("ID");
            row.createCell(1).setCellValue("First Name");
            row.createCell(2).setCellValue("Last Name");
            row.createCell(3).setCellValue("Email");
            row.createCell(4).setCellValue("Phone Number");
            row.createCell(5).setCellValue("Gender");
            row.createCell(6).setCellValue("DOB");

            List<Student> students = studentDAO.getAllStudents();
            sheet.setColumnWidth(1, 7000);
            sheet.setColumnWidth(2, 7000);
            sheet.setColumnWidth(3, 7000);
            sheet.setColumnWidth(4, 7000);
            sheet.setColumnWidth(5, 7000);
            for (Student student : students) {
                row = sheet.createRow(sheet.getLastRowNum() + 1);
                row.createCell(0).setCellValue(student.getId());
                row.createCell(1).setCellValue(student.getFirstName());
                row.createCell(2).setCellValue(student.getLastName());
                row.createCell(3).setCellValue(student.getEmail());
                row.createCell(4).setCellValue(student.getPhoneNumber());
                row.createCell(5).setCellValue(student.getGender());
                row.createCell(6).setCellValue(student.getDateOfBirth().toString());
            }
        }
        else if (data.equals("employees")) {
            location = "employees";
            filename = "Employees Report.xlsx";
            Sheet sheet = workbook.createSheet("Employees Report");
            Row row = sheet.createRow(0);
            row.createCell(0).setCellValue("ID");
            row.createCell(1).setCellValue("Full Name");
            row.createCell(2).setCellValue("Username");
            row.createCell(3).setCellValue("Email");
            row.createCell(4).setCellValue("User Role");

            List<User> employees = userDAO.getAllEmployees();
            sheet.setColumnWidth(1, 7000);
            sheet.setColumnWidth(2, 7000);
            sheet.setColumnWidth(3, 7000);
            sheet.setColumnWidth(4, 7000);
            for (User employee : employees) {
                row = sheet.createRow(sheet.getLastRowNum() + 1);
                row.createCell(0).setCellValue(employee.getId());
                row.createCell(1).setCellValue(employee.getFullName());
                row.createCell(2).setCellValue(employee.getUsername());
                row.createCell(3).setCellValue(employee.getEmail());
                row.createCell(4).setCellValue(employee.getUserRole().toString());
            }
        }
        else if (data.equals("courses")) {
            location = "courses";
            filename = "Courses Report.xlsx";
            Sheet sheet = workbook.createSheet("Courses Report");
            Row row = sheet.createRow(0);
            row.createCell(0).setCellValue("ID");
            row.createCell(1).setCellValue("Course Code");
            row.createCell(2).setCellValue("Course Name");
            row.createCell(3).setCellValue("Course Starts");
            row.createCell(4).setCellValue("Course Ends");
            row.createCell(5).setCellValue("Min Students");
            row.createCell(6).setCellValue("Max Students");

            List<Course> courses = courseDAO.getAllCourses();
            sheet.setColumnWidth(2, 9000);
            for (Course course : courses) {
                row = sheet.createRow(sheet.getLastRowNum() + 1);
                row.createCell(0).setCellValue(course.getId());
                row.createCell(1).setCellValue(course.getCode());
                row.createCell(2).setCellValue(course.getName());
                row.createCell(3).setCellValue(course.getStart());
                row.createCell(4).setCellValue(course.getEnd());
                row.createCell(5).setCellValue(course.getMinStudent());
                row.createCell(6).setCellValue(course.getMaxStudent());
            }
        }
        else if (data.equals("users")) {
            location = "users";
            filename = "Users Report.xlsx";
            Sheet sheet = workbook.createSheet("Users Report");
            Row row = sheet.createRow(0);
            row.createCell(0).setCellValue("ID");
            row.createCell(1).setCellValue("Full Name");
            row.createCell(2).setCellValue("Username");
            row.createCell(3).setCellValue("Email");
            row.createCell(4).setCellValue("User Role");

            List<User> users = userDAO.getAllUsers();
            sheet.setColumnWidth(1, 7000);
            sheet.setColumnWidth(2, 7000);
            sheet.setColumnWidth(3, 7000);
            sheet.setColumnWidth(4, 7000);
            for (User user : users) {
                row = sheet.createRow(sheet.getLastRowNum() + 1);
                row.createCell(0).setCellValue(user.getId());
                row.createCell(1).setCellValue(user.getFullName());
                row.createCell(2).setCellValue(user.getUsername());
                row.createCell(3).setCellValue(user.getEmail());
                row.createCell(4).setCellValue(user.getUserRole().toString());
            }
        }
        else if (data.equals("parents")) {
            location = "parents";
            filename = "Parents Report.xlsx";
            Sheet sheet = workbook.createSheet("Parents Report");
            Row row = sheet.createRow(0);
            row.createCell(0).setCellValue("ID");
            row.createCell(1).setCellValue("Full Name");
            row.createCell(3).setCellValue("Username");
            row.createCell(4).setCellValue("Email");
            row.createCell(5).setCellValue("User Role");

            List<User> users = userDAO.getAllUsers();
            sheet.setColumnWidth(1, 9000);
            sheet.setColumnWidth(2, 9000);
            for (User user : users) {
                row = sheet.createRow(sheet.getLastRowNum() + 1);
                row.createCell(0).setCellValue(user.getId());
                row.createCell(1).setCellValue(user.getFullName());
                row.createCell(2).setCellValue(user.getUsername());
                row.createCell(3).setCellValue(user.getEmail());
                row.createCell(4).setCellValue(user.getUserRole().toString());
            }
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        workbook.write(out);

        workbook.close();
        resp.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        resp.setHeader("Content-Disposition", "attachment; filename=" + filename + "");

        OutputStream outputStream = resp.getOutputStream();
        out.writeTo(outputStream);
        out.close();
        outputStream.close();
        resp.sendRedirect(location + ".jsp");
    }
}
