<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Result</title>
    <style>
        body {
            background: linear-gradient(135deg, #66BBFF, #4682B4);
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
            margin: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .task-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: flex-start;
            list-style-type: none;
            padding: 0;
            margin-top: 20px;
            max-width: 800px;
        }

        .task-item {
            background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent white background */
            border-radius: 10px;
            padding: 10px;
            margin: 5px;
            width: 300px;
        }

        .task-details {
            font-size: 1.2em;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Sorted Tasks</h1>
    <ul class="task-list">
        <% for (com.TaskTracker.Task task : (List<com.TaskTracker.Task>) request.getAttribute("tasks")) { %>
            <li class="task-item">
                <div class="task-details">
                    <strong>Type:</strong> <%=  task.getType() %> <strong>Name:</strong> <%= task.getName() %> <strong>Due Date:</strong> <%= task.getDueDate() %>
                </div>
            </li>
        <% } %>
    </ul>
</body>
</html>