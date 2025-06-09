<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Calendar | E-LearnOver Vidya</title>
  
  <!-- FullCalendar v5 CSS & JS (non-module) 
  <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>  -->


<!-- FullCalendar first -->
<link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>

<!-- AngularJS -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular-route.min.js"></script>



  <style>
/* Global Styles */


h2 {
  text-align: center;
  margin: 10px 0;
  font-size: 36px;
  font-weight: 600;
  color: #1e293b;
  letter-spacing: 1px;
  transition: color 0.3s ease-in-out;
}

h2:hover {
  color: #3b82f6;
}

p {
letter-spacing: 3px;
 margin: 10px 0;
}

/* Calendar Container */
#calendar {
  max-width: 1200px;
  margin: 0 auto;
  background: #ffffff;
  padding: 30px;
  border-radius: 10px;
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
  animation: fadeIn 1.5s ease-in-out;
}

.calendar-container {
  background: #ffffff;
  border-radius: 15px;
  padding: 40px;
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.calendar-container:hover {
  transform: scale(1.02);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
}

/* Calendar Header */
.fc-toolbar {
  background-color: #3b82f6;
  color: #ffffff;
  border-radius: 10px;
  padding: 10px 20px;
  text-align: center;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
}

.fc-toolbar .fc-button {
  background-color: #3b82f6;
  color: #fff;
  border-radius: 5px;
  padding: 5px 10px;
  margin: 0 5px;
  transition: all 0.3s ease;
}

.fc-toolbar .fc-button:hover {
  background-color: #2563eb;
  transform: scale(1.05);
}

/* Event Styling */
.fc-event {
  border-radius: 8px;
  padding: 10px;
  font-size: 14px;
  font-weight: bold;
  color: #fff;
  text-align: center;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.fc-event:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
}

.fc-event-title {
  font-size: 16px;
}

/* Event Color Customization */
.fc-event[style*="background-color: #60a5fa"] {
  background-color: #60a5fa !important; /* Light Blue */
}

.fc-event[style*="background-color: #f87171"] {
  background-color: #f87171 !important; /* Red */
}

.fc-event[style*="background-color: #fbbf24"] {
  background-color: #fbbf24 !important; /* Yellow */
}

.fc-event[style*="background-color: #a78bfa"] {
  background-color: #a78bfa !important; /* Purple */
}

/* Animation for Calendar */
@keyframes fadeIn {
  0% {
    opacity: 0;
    transform: translateY(20px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Responsive Styles */
@media (max-width: 768px) {
  h2 {
    font-size: 28px;
    margin: 30px 0;
  }

  #calendar {
    padding: 20px;
  }

  .calendar-container {
    padding: 25px;
  }
}



#addEventBtn:hover {
  background-color: #1e40af;
  transform: scale(1.05);
}

  </style>
</head>
<body ng-controller="aCalenderController">
<h2>📅 Admin Calendar!</h2>
 <!--  <h2>📅 Your Learning Calendar</h2>    -->
<center><p style="font-size: 15px;">Manage all academic and institutional events</p> </center>

    <!-- Add Event Button -->
    <button id="addEventBtn" onclick="openAddEventModal()" style="
      background-color: #2563eb;
      color: #fff;
      border: none;
      padding: 10px 20px;
      margin-top: 10px;
      border-radius: 8px;
      font-size: 15px;
      font-weight: 600;
      margin-left: 40px;
      cursor: pointer;
      transition: background 0.3s ease, transform 0.3s ease;
    ">➕ Add Event</button>
  </div>

  <div id="calendar"></div>
  
    <!-- Optional Placeholder for Event Modal -->
  <div id="eventModal" style="display: none;">
    <!-- Later we can add a form or modal here -->
  </div>

</body>
</html>
