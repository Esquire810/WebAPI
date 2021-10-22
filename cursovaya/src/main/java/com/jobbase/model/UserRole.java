package com.jobbase.model;

public enum UserRole {
    ADMIN, EMPLOYEE, EMPLOYER;

    @Override
    public String toString() {
        return "ROLE_" + name();
    }
}

