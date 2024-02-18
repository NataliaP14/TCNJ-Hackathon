<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Result</title>
</head>
<body>
    <h1>Sorted Tasks</h1>
    <ul>
        <!-- Loop through the list of tasks and display each task's type, name, and due date -->
        <% for (com.TaskTracker.Task task : (List<com.TaskTracker.Task>) request.getAttribute("tasks")) { %>
            <li><%= task.getType() %> - <%= task.getName() %> - <%= task.getDueDate() %></li>
        <% } %>
    </ul>
</body>
</html>
