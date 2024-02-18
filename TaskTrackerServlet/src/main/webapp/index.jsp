<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Tracker</title>
    <!-- javascript function to add task fields -->
    <script>
        function addTaskField() {
            // Get the container element for task fields
            var container = document.getElementById("taskContainer");
            // Create a new div element to hold the task fields
            var newTaskFields = document.createElement("div");
            // Set inner HTML for the new div to contain input fields for type, name, and due date
            newTaskFields.innerHTML = "<div>" +
                                         "<input type='text' name='type[]' placeholder='Type'>" +
                                         "<input type='text' name='name[]' placeholder='Name'>" +
                                         "<input type='date' name='dueDate[]' placeholder='Due Date'>" +
                                      "</div>";
            
            container.appendChild(newTaskFields);
        }
    </script>
</head>
<body>
    <h1>Task Tracker</h1>
    <!-- form to submit task -->
    <form action="TaskTrackerServlet" method="post">
        <!-- container  -->
        <div id="taskContainer">
            <!-- Default task fields -->
            <div>
                <input type="text" name="type[]" placeholder="Type">
                <input type="text" name="name[]" placeholder="Name">
                <input type="date" name="dueDate[]" placeholder="Due Date">
            </div>
        </div>
        <!-- add more task fields -->
        <button type="button" onclick="addTaskField()">Add Task</button>
        <br>
        <!-- submit button-->
        <input type="submit" value="Submit">
    </form>
</body>
</html>
