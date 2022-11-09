package com.se2115.anikit.services;

import com.se2115.anikit.dbo.PostgresDBO;
import com.se2115.anikit.models.anime.Anime;

import java.util.ArrayList;

public class AnimeService implements DBService{

    private PostgresDBO dbManager;

    public AnimeService(){
        dbManager = PostgresDBO.getInstance();
        dbManager.setConnection();
    }

    @Override
    public Object getObjectByField(String field) {
        return dbManager.getAnimeById(field);
    }

    @Override
    public void addObject(Object obj) {
        Anime new_anime = (Anime) obj;
        dbManager.addAnime(new_anime);
    }

    @Override
    public void updateObject(Object obj) {
        dbManager.updateAnime((Anime) obj);
    }

    @Override
    public void deleteObject(int id) {
        dbManager.deleteAnime(id);
    }

    @Override
    public ArrayList<Object> getAll() {
        return dbManager.getAllAnime();
    }

    public ArrayList<Integer> getAllSubAnime(String user_id) {
        return dbManager.getAnimeIdBySubscriber(user_id);
    }

}
