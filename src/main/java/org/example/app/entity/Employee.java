package org.example.app.entity;

public class Employee {

    private Long id;
    private final String name;
    private final String post;
    private final String phoneNumber;

    public Employee(String name, String post, String phoneNumber) {
        this.name = name;
        this.post = post;
        this.phoneNumber = phoneNumber;
    }

    public Employee(Long id, String name, String post, String phoneNumber) {
        this.id = id;
        this.name = name;
        this.post = post;
        this.phoneNumber = phoneNumber;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPost() {
        return post;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }
}
