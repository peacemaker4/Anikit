package com.se2115.anikit.interfaces;

public interface IObservable {
    void AddObserver(IObserver obs);
    void RemoveObserver(IObserver obs);
    void NotifyObservers(String n);
}
