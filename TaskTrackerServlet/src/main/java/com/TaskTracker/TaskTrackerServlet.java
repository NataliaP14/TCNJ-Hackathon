package com.TaskTracker;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TaskTrackerServlet")
public class TaskTrackerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // task data from form parameters
        String[] types = request.getParameterValues("type[]");
        String[] names = request.getParameterValues("name[]");
        String[] dueDates = request.getParameterValues("dueDate[]");

        // Create a list to hold tasks
        List<Task> tasks = new ArrayList<>();

        // Check if task data is not null and create Task objects
        if (types != null && names != null && dueDates != null) {
            for (int i = 0; i < types.length; i++) {
                Task task = new Task(types[i], names[i], dueDates[i]);
                tasks.add(task);
            }
        }

        // sort tasks by due date using Comparator
        Collections.sort(tasks, Comparator.comparing(Task::getDueDate));

        // set tasks as a request attribute
        request.setAttribute("tasks", tasks);

        // forward the request to the result.jsp page for displaying tasks
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response);
    }
}



