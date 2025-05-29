# Hotel Management System

**Name**: Padmaraj Kurundwade  
**USN**: 4AL22CS097
**Subject Name**: Advanced Java 

---
## A comprehensive web application for managing hotel operations, including room bookings and customer records.
## Built using JSP, Servlets, and MySQL, following the MVC architecture for clean code separation.

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

### 🔹 Add Reservation - 
![Add New Reservation](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Reservation_2.png)

### For More Related Images :- [!! Add_Reservation 1 !!](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Reservation_1.png)[_!! Add_Reservation 2 !!](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Reservation_2.png)

### 🔹 Update Reservation -
![Update Reservation](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Update_3.png)

### For More Related Images :- [!! Update_1 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Update_1.png)[!! Update_2 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Update_2.png)[!! Update_3 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Update_3.png)[!! Update_4 !!](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Update_4.png)

### 🔹 Cancel Reservation -
![Cancel Reservation](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Cancel_3.png)

### For More Related Images :- [!! Cancel_1 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Cancel_1.png)[!! Cancel_2 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Cancel_2.png)[!! Cancel_3 !!](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Cancel_3.png)

### 🔹 View All Reservations -
![View All Reservations](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/All_Reservations_2.png)

### For More Related Images :- [!! All_Reservations_1 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/All_Reservations_1.png)[!! All_Reservations_2 !!](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/All_Reservations_2.png)

### 🔹 Generate Reports -

### 📅 Reservations in a Date Range -
![Reservations in a Date Range](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_4.png)

### 🏡 Rooms Booked Most Frequently -
![Rooms Booked Most Frequently](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_5.png)

### 💸 Total Revenue Over a Period -
![Total Revenue Over a Period](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_7.png)

### 🅿️ Reservations By Customer Name -
![Reservations By Customer Name](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_9.png)

### For More Related Images :- [!! Report_1 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_1.png)[!! Report_2 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_2.png)[!! Report_3 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_3.png)[!! Report_4 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_4.png)[!! Report_5 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_5.png)[!! Report_6 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_6.png)[!! Report_7 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_7.png)[!! Report_8 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_8.png)[!! Report_9 !!_](https://github.com/PadmarajKurundwade07/Hotel_Management_System/blob/main/Screenshots/Report_9.png)


## 🎯 Usage Application :

### 🏨 Add New Reservation :-

1. Navigate to "Add New Reservation" from the homepage.
2. Fill in the reservation form:
   > Customer Name.
   > Room Number.
   > Check-in and Check-out Dates.
   > Total Amount.
3. Click "Add Reservation" to save the booking.

### ✏️ Update Reservation :-

1. Go to "Update Reservation".
2. Search For The Reservation by Id.
3. Edit Reservation Details:
   > Customer Name.
   > Room Number.
   > Check-in and Check-out Dates.
   > Total Amount.
4. Click "Update Reservation" to apply the changes.

### ❌ Cancel Reservation :-

1. Open "Cancel Reservation" from the menu.
2. Search for the reservation using Reservation ID.
3. Confirm the cancellation by clicking "Confirm Cancellation".
4. The reservation will be removed from the system.

### 📋 View All Reservations :-

1. Navigate to "View All Reservations".
2. The system will display all active reservations.

### 📊 Generate Reports :-

1. Click on "Generate Reports" from the homepage.
2. Choose the type of report:
   > Reservations in a Date Range.
   > Rooms Booked Most Frequently.
   > Total Revenue Over a Period.
   > Reservations By Customer Name.
3. Click "Generate Report" to See the report.

## 🧪 Testing the Application :

## Test Cases to Verify :-

1. Add Reservation:
    > Add valid reservation details.
    > Try adding overlapping bookings for the same room.
    > Test form validation.

2. Update Reservation:
   > Update an existing reservation's check-in/check-out dates or room number.
   > Attempt to update a non-existent reservation ID (should show error).
   > Check if updates reflect correctly in the system.

3. Cancel Reservation:
   > Cancel a valid reservation by ID.
   > Attempt to cancel a non-existent reservation (should fail gracefully).
   > Confirm that canceled reservations are removed from the list.

4. View All Reservations:
   > Load and display all current reservations.
   > Verify it.
   > Check responsiveness of the view under high data load.

5. Generate Reports:
   > Generate reports for bookings made in a specific time period.
   > Generate reports for bookings a Most Frequently rooms.
   > Generate reports for Total Revenue Over a Period.
   > Generate reports for Reservations By Customer Name.
   > Validate accuracy of report data (total bookings, specific time period, etc.).

## ✅ Project Highlights :

This project demonstrates :-

### 🧩 MVC Architecture :-
Ensures a clear separation of concerns between the Model (business logic), View (UI), and Controller (request handling).

### 🗃️ Database Integration :- 
Full CRUD operations performed using MySQL, enabling persistent data storage for reservations and reports.

### 🌐 Web Technologies :-
Developed using JSP, Servlets, HTML, CSS, and JavaScript to create dynamic and interactive web pages.

### ✅ Input Validation :-
Implements both client-side (JavaScript) and server-side (Servlet) validations for data integrity and security.

### 📊 Report Generation :-
Dynamically generates booking reports for analysis and decision-making.

### 🎨 Professional UI :- 
Features a clean, responsive user interface styled with Bootstrap for enhanced usability and modern appearance.





## ----------------------------------------------------------> THANK_YOU <---------------------------------------------------------- ##
