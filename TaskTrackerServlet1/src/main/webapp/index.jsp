<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Task Tracker</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #66BBFF, #4682B4);
            color: #FFFFFF; /* White text color for better readability */
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            min-height: 100vh;
        }
        .container {
            width: 90%; /* Adjusted width for better responsiveness */
            max-width: 600px; /* Set max-width to prevent container from becoming too wide */
            background: rgba(255, 255, 255, 0.95); /* Semi-trat white background for better readability */
            border-radius: 20px; /* Rounded corners for a softer look */
            padding: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3); /* Drop shadow for depth */
        }
        .header {
            text-align: center; /* Center the text */
            font-size: 2.5rem; /* Adjusted font size for better readability */
            margin-bottom: 20px;
            color: #4682B4; /* Color to match the backgroundient */
        }
        .title {
            font-size: 1.2rem; /* Adjusted font size for better readability */
            margin-bottom: 20px;
            text-align: center; /* Center the text */
            color: #4682B4;
            opacity: 0.5;
        }
        .task-input {
            display: flex;
            gap: 10px;
            align-items: center;
            margin-bottom: 20px; /* Added margin for better spacing */
        }
        .task-input input {
            flex: 1; /* Let input fields grow to fill available space */
            height: 40px;
            border-radius: 20px;
            padding: 0 15px;
            font-size: 1rem; /* Adjusted font size for better readability */
            border: none;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); /* Added subtle shadow */
        }
        .add-task-btn, .submit-btn {
            width: 100%; /* Button takes full width */
            height: 40px;
            border-radius: 20px;
            background: #4682B4; /* Primary color for buttons */
            color: #FFFFFF; /* White text color for buttons */
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            margin-top: 10px;
            font-size: 1rem; /* Adjusted font size for better readability */
            transition: background 0.3s; /* Smooth transition on hover */
        }
        .add-task-btn:hover, .submit-btn:hover {
            background: #66BBFF; /* Lighter shade on hover for buttons */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">Student Task Tracker</div>
        <div class="content">
            <div class="title">Enter your tasks below and they'll be sorted out for you.</div>
            <form action="TaskTrackerServlet" method="post">
                <div id="taskContainer">
                    <div class="task-input">
                        <input type="text" name="type[]" placeholder="Type">
                        <input type="text" name="name[]" placeholder="Name">
                        <input type="date" name="dueDate[]" placeholder="Due Date">
                    </div>
                </div>
                <div class="add-task-btn" onclick="addTaskField()">Add Task</div>
                <input type="submit" class="submit-btn" value="Submit">
            </form>
        </div>
    </div>
    <script>
        function addTaskField() {
            var container = document.getElementById("taskContainer");
            var newTaskFields = document.createElement("div");
            newTaskFields.classList.add("task-input");
            newTaskFields.innerHTML = "<input type='text' name='type[]' placeholder='Type'>" +
                                       "<input type='text' name='name[]' placeholder='Name'>" +
                                       "<input type='date' name='dueDate[]' placeholder='Due Date'>";
            container.appendChild(newTaskFields);
        }
    </script>
</body>
</html>
