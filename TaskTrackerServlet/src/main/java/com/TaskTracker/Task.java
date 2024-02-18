package com.TaskTracker;


public class Task {
    private String type;
    private String name;
    private String dueDate;
 
    
    public Task(String type, String name, String dueDate) {
        this.type = type;
        this.name = name;
        this.dueDate = dueDate;
    }

    // Getters and setters
    public String getType() {
        return type;
    }

 

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDueDate() {
        return dueDate;
    }

    public void setDueDate(String dueDate) {
        this.dueDate = dueDate;
    }

	public void setType(String type2) {
		// TODO Auto-generated method stub
		
	}

}
