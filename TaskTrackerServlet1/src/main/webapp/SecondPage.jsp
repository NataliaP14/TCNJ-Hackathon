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
        	/*background-color: #4682B4;*/
           	background-color: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            padding: 2.5px;
            margin: 1px;
            width: 100%;
            height: 40px;
            
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
        margin-bottom: 22.5px;
        border: none; 
        background: none;
        height: 3px;
    }
    
    .task-title {
    	display: flex;
    }
    
    .start-button {
    	width: 100%; /* Button takes full width */
        height: 30px;
        border-radius: 20px;
        background: #FFFFFF; /* Primary color for buttons */
        color: #000000; /* White text color for buttons */
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
        margin-bottom: 1px;
        font-size: 65%; /* Adjusted font size for better readability */
        transition: background 0.3s; 
        border-style: none;
        
    }
    
    a {
    text-decoration: none;
    }
    
    #type {
    	justify-content: left;
    }
    
    #name {
    	justify-content: left;
    }
    
    #due-date {
    	justify-content: right;
    }
    
    </style>
</head>
</head>
<body>
    <h1>Sorted Tasks</h1>
    <div class="task-title"> </div>
    <ul class="task-list">
        <% for (com.TaskTracker.Task task : (List<com.TaskTracker.Task>) request.getAttribute("tasks")) { %>
            <li class="task-item">
            	
               <div class="task-details">
    <div class="task-item" id="type"><%= task.getType()  %> </div>
    <div class="task-item" id="name"><%= task.getName()  %> </div>
    <div class="task-item" id="due-date"> <%= task.getDueDate()  %> <a href="ThirdPage.jsp"> </div> <button class="start-button"> Timer </button> </a> </div>
    </div>
            </li>
        <% } %>
	</ul>
</body>
</html>



