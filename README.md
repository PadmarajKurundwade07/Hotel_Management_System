# Hotel Management System

**Subject Name**: Advanced Java    
**Name**: Padmaraj Kurundwade  
**USN**: 4AL22CS097 

---
A comprehensive web application for managing hotel operations, including room bookings and customer records.
Built using JSP, Servlets, and MySQL, following the MVC architecture for clean code separation.

## 🧰 Features :

- **Complete CRUD Operations**: Add, update, delete, and display customer room records.
- **Room Booking System**: Manage room availability, bookings, check-ins, and check-outs.
- **Billing System**: Auto-generate final bill
- **Advanced Search**: Search bookings by customer ID, name, or date range.
- **Input Validation**: Both client-side and server-side validation for secure and clean data entry.
- **Professional UI**: Bootstrap-based responsive and user-friendly interface.
- **MVC Architecture**: Clean separation of Presentation (JSP), Controller (Servlet), and Model (JDBC/MySQL).
- **Database Integration**: MySQL database with JDBC connectivity for real-time data management.

## 📋 Prerequisites :

Before running this application, ensure the following are installed:

- **Java Development Kit (JDK) 8 or higher !**
- **Apache Tomcat 9.0 or higher !**
- **MySQL Server 5.7+ or XAMPP Server !**
- **MySQL JDBC Driver (mysql-connector-java) !**
- **IDE: Eclipse (J2EE), IntelliJ IDEA, or any Java-compatible IDE !**
- **Web Browser: Chrome, Edge, or Firefox !**

## 🗂️🛠 Project Structure :

```
HotelWebApp/
├── WebContent/
│ ├── index.jsp
│ ├── reservationadd.jsp
│ ├── reservationupdate.jsp
│ ├── reservationdelete.jsp
│ ├── reservationdisplay.jsp
│ ├── reports.jsp
│ ├── report_form.jsp
│ └── report_result.jsp
├── src/
│ ├── com/
│ ├── dao/
│ │ └── ReservationDAO.java
│ ├── model/
│ │ └── Reservation.java
│ └── servlet/
│ ├── AddReservationServlet.java
│ ├── UpdateReservationServlet.java
│ ├── DeleteReservationServlet.java
│ ├── DisplayReservationsServlet.java
│ ├── ReportServlet.java
│ └── ReportCriteriaServlet.java
└── WEB-INF/web.xml
└── README.md
```

## 🗄️ Database Setup :

### 1. Create Database :
``` -> sql :-

CREATE DATABASE IF NOT EXISTS hotel_management;
USE hotel_management;
```

### 2. Create Table :
``` -> sql :-
CREATE TABLE IF NOT EXISTS StudentMarks (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Subject VARCHAR(50) NOT NULL,
    Marks INT NOT NULL,
    ExamDate DATE NOT NULL
);
```

### 3. Insert Sample Data :
``` -> sql :- 
INSERT INTO Reservations VALUES
(2,	'Padmaraj K',	'12',	'2025-05-10',	'2025-05-28',	5000.00),
(3,	'Rohan',	'02', '2025-05-01',	'2025-05-02',	500.00),
(5,	'Raj',	'07',	'2025-05-07',	'2025-05-08',	1000.00)
```

## ⚙️ Installation & Setup :

### Step 1: Clone/Download the Project;
Download all the project files and organize them based on the MVC project structure (Model, View, Controller, WEB-INF, etc.).

### Step 2: Database Configuration :
1. Start your MySQL or XAMPP server.
2. Run the SQL script provided above to create the database and table:
3. Update the DB connection in `ReservationDAO.java`:
   ```java
   connection = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hotel_management", 
    "your_username", 
    "your_password");
   ```

### Step 3: Add MySQL JDBC Driver :
1. [Download MySQL Connector/J](https://dev.mysql.com/downloads/connector/j/) from the official MySQL website.
2. Add the downloaded JAR file to your project’s `WEB-INF/lib` directory.
3. If using an IDE like Eclipse or IntelliJ, add it to your build path.

### Step 4: Deploy to Tomcat :
1. Create a Dynamic Web Project in your IDE (Eclipse recommended).
2. Import all your Java source files, JSPs, and web resources.
3. Deploy the project on Tomcat (version 9.0 or higher).
4. Start the Tomcat server.

### Step 5: Access the Application :
Open your browser and go to:
```
http://localhost:8080/HotelManagementSystem/
```
This will open your homepage with modules like Add New Reservation, Update Reservation, Cancel Reservation, 
View All Reservations, and Generate Reports — as seen in the UI.

## 📸 Screenshots :

### 🔹 Front Page -
![Front Page](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Front_page.png)

### 🔹 Add Reservations - 
![Add New Reservations](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Reservation_1.png)

[Enter_the_Data](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Reservation_2.png)

### 🔹 All Reservations
![All Reservations 1](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/All_Reservations_1.png)
![All Reservations 2](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/All_Reservations_2.png)

### 🔹 Cancel Reservation
![Cancel 1](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Cancel_1.png)
![Cancel 2](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Cancel_2.png)
![Cancel 3](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Cancel_3.png)

### 🔹 Reports
![Report 1](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_1.png)
![Report 2](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_2.png)
![Report 3](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_3.png)
![Report 4](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_4.png)
![Report 5](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_5.png)
![Report 6](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_6.png)
![Report 7](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_7.png)
![Report 8](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_8.png)





### 🏠 Home Page
<img src="screenshots/Homepage.png" alt="Home Page" width="700"/>

### ➕ Add Marks Page
<img src="screenshots/add.png" alt="Add Marks Page" width="700"/>

### 🔍 Search Student
<img src="screenshots/search.png" alt="Search Student" width="700"/>

### ❌ Delete Details
<img src="screenshots/delete.png" alt="Search Student" width="700"/>

### 🆕 Update Details
<img src="screenshots/update.png" alt="Search Student" width="700"/>

### 📋 Display Marks
<img src="screenshots/display.png" alt="Display Marks" width="700"/>


## 🎯 Usage Application

### Adding Student Marks
1. Navigate to "Add Marks" from the main menu
2. Fill in all required fields:
   - Student ID (unique identifier)
   - Student Name (max 100 characters)
   - Subject (select from dropdown)
   - Marks (0-100)
   - Exam Date (cannot be future date)
3. Click "Add Student Mark"

### Updating Student Marks
1. Go to "Update Marks"
2. Search for a student by ID
3. Modify the displayed information
4. Click "Update Student Mark"

### Deleting Student Marks
1. Go to "Delete Marks"
2. Search for a student by ID
3. Confirm deletion by checking the confirmation box
4. Click "Delete Student Record"

### Displaying Student Marks
1. Go to "Display Marks"
2. Either view all records or search by specific Student ID
3. Use the action buttons to Edit or Delete records

### Generating Reports
1. Go to "Generate Reports"
2. Select report type:
   - **Students Above Threshold**: Enter minimum marks
   - **Students by Subject**: Select subject
   - **Top Students**: Enter number of top students
3. Click "Generate Report"
4. View results with statistics and print option

## 🔧 Technical Features

### Input Validation
- **Client-side**: JavaScript validation with Bootstrap
- **Server-side**: Comprehensive validation in servlets
- **Database constraints**: Primary key and NOT NULL constraints

### Error Handling
- Try-catch blocks for database operations
- User-friendly error messages
- Graceful handling of invalid inputs

### Security Features
- Prepared statements to prevent SQL injection
- Input validation
- Session management

### Responsive Design
- Bootstrap 5.3 framework
- Styling with hover effects
- Print-friendly report layouts

## 🧪 Testing the Application

### Test Cases to Verify:

1. **Add Operations**:
   - Add valid student records
   - Try adding duplicate Student IDs (should fail)
   - Test input validation (empty fields, invalid dates, etc.)

2. **Update Operations**:
   - Update existing records
   - Try updating non-existent Student ID
   - Test field validation

3. **Delete Operations**:
   - Delete existing records
   - Try deleting non-existent Student ID
   - Test confirmation mechanism

4. **Display Operations**:
   - View all records
   - Search by valid Student ID
   - Search by invalid Student ID

5. **Report Generation**:
   - Generate all three types of reports
   - Test with different criteria values
   - Verify statistics calculations



## 🎓 Outcomes

This project demonstrates:
- **MVC Architecture**: Clear separation between Model, View, and Controller
- **Database Integration**: CRUD operations with MySQL
- **Web Development**: JSP, Servlets, HTML, CSS, JavaScript
- **Input Validation**: Both client-side and server-side
- **Report Generation**: Dynamic data analysis and presentation
- **Professional UI**: Responsive design with Bootstrap
