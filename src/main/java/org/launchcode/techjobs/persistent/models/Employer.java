package org.launchcode.techjobs.persistent.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
public class Employer extends AbstractEntity {
    @Id
    @GeneratedValue
    private int id;

    private String name;

    @NotNull(message = "Location is required")
    @Size(max = 100, message = "Maximum name size is 100 characters!")
    private String location;

    public Employer() {
    }

    public Employer(String aLocation) {
        super();
        this.location = aLocation;
    }

    public String getLocation() {
        return location;
    }
}
