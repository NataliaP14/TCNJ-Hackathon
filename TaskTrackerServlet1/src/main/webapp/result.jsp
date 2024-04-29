<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Result</title>
    <style>
        body {
            background: linear-gradient(135deg, #66BBFF, #4682B4);
            color: white;
            font-family: Arial;
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
            padding: 5px;
            margin: 1px;
            width: 100%;
        }

        .task-details {
        font-size: 1.2em;
        margin-bottom: 15px;
        box-sizing: border-box;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center; 
        height: 100%;
        }
        .task-details strong {
        font-size: 1.2em;
}
         pre {
        font-size: 14px; 
        margin: 0; 
    }
      .task-details div {
        margin-bottom: 10px; 
    }
    </style>
</head>
</head>
<body>
    <h1>Sorted Tasks</h1>
    <ul class="task-list">
        <% for (com.TaskTracker.Task task : (List<com.TaskTracker.Task>) request.getAttribute("tasks")) { %>
            <li class="task-item">
               <div class="task-details">
    <strong>Type: </strong> <%= task.getType()  %>---
    <strong>Name: </strong> <%= task.getName()  %>---
    <strong>Due Date: </strong> <%= task.getDueDate()  %>
    </div>

            </li>
        <% } %>
</body>
</html>



