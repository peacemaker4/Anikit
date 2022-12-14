package com.se2115.anikit.models.anime;

import com.se2115.anikit.interfaces.observer.IObservable;
import com.se2115.anikit.interfaces.observer.IObserver;

import java.util.ArrayList;

public class Anime implements IObservable {
    private int id;
    private String title;
    private String description;
    private String cover;
    private int user_id;

    private ArrayList<IObserver> _observers;

    private AnimeState state = new AnnouncedState();

    public Anime() {
    }

    public Anime(String name, String description) {
        this.title = name;
        this.description = description;
    }

    public void setState(AnimeState state) {
        this.state = state;
    }

    public String getState(){
        return state.returnStatus();
    }

    public void previousState(){
        state.prev(this);
    }

    public void nextState(){
        state.next(this);
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getCover() {
        return cover;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public void AddObserver(IObserver obs) {
        _observers.add(obs);
    }

    @Override
    public void RemoveObserver(IObserver obs) {
        _observers.remove(obs);
    }

    public void SendNews(String news)
    {
        NotifyObservers(news);
    }

    @Override
    public void NotifyObservers(String news) {
        for(var obs: _observers){
            obs.Update(news);
        }
    }

    public Object clone() {
        Object clone = null;

        try {
            clone = super.clone();

        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }

        return clone;
    }

}
