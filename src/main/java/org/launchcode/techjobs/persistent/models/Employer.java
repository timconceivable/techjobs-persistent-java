package org.launchcode.techjobs.persistent.models;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

import java.util.ArrayList;
import java.util.List;

@Entity
public class Employer extends AbstractEntity {

    @NotNull(message = "Location is required")
    @Size(max = 100, message = "Location can only be 100 characters maximum")
    private String location;

    public Employer() {
    }

    public Employer(String aLocation) {
        super();
        this.location = aLocation;
    }

    @OneToMany
    @JoinColumn(name="employer_id")
    private final List<Job> jobs = new ArrayList<>();

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) { this.location = location; }
}
