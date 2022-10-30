package com.se2115.anikit.services;

import com.se2115.anikit.dbo.PostgresDBO;
import com.se2115.anikit.models.user.User;

import java.util.ArrayList;

public class UserService implements DBService{

    private PostgresDBO dbManager;

    public UserService(){
        dbManager = PostgresDBO.getInstance();
        dbManager.setConnection();
    }

    @Override
    public Object getObjectByField(String field) {
        return dbManager.getUserByEmail(field);
    }

    @Override
    public void addObject(Object obj) {
        User new_user = (User) obj;
        dbManager.addUser(new_user);
    }

    @Override
    public ArrayList<Object> getAll() {
        return null;
    }

    public void subscribe(Integer anime_id, Integer user_id){
        dbManager.addSubscriber(anime_id, user_id);
    }

}
