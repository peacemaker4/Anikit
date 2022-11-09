package com.se2115.anikit.interfaces.prototype;

import com.se2115.anikit.models.anime.Anime;

public class AnimeMaker {
    public static void main(String[] args) {
        AnimeCache.loadCache();

        Anime clonedAnime = (Anime) AnimeCache.getAnime("1");
        System.out.println("Title: " + clonedAnime.getTitle() + " Description: " + clonedAnime.getDescription() + " Select: " + clonedAnime.getState() + " Cover: " + clonedAnime.getCover());

        Anime clonedAnime2 = (Anime) AnimeCache.getAnime("2");
        System.out.println("Title: " + clonedAnime2.getTitle() + " Description: " + clonedAnime2.getDescription() + " Select: " + clonedAnime2.getState() + " Cover: " + clonedAnime2.getCover());

        Anime clonedAnime3 = (Anime) AnimeCache.getAnime("3");
        System.out.println("Title: " + clonedAnime3.getTitle() + " Description: " + clonedAnime3.getDescription() + " Select: " + clonedAnime3.getState() + " Cover: " + clonedAnime3.getCover());
    }
}