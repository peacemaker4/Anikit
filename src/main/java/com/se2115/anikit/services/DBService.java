package com.se2115.anikit.services;

import com.se2115.anikit.models.user.User;

import java.util.ArrayList;

public interface DBService {
    Object getObjectByField(String field);
    void addObject(Object obj);
    ArrayList<Object> getAll();
}
