package com.se2115.anikit.interfaces.prototype;

import com.se2115.anikit.models.anime.Anime;

import java.util.Hashtable;

public class AnimeCache {

    private static Hashtable<Integer, Anime> animeMap  = new Hashtable<Integer, Anime>();

    public static Anime getAnime(String animeId) {
        Anime cachedAnime = animeMap.get(animeId);
        return (Anime) cachedAnime.clone();
    }


    public static void loadCache() {
        Anime1 anime1 = new Anime1();
        anime1.setId(1);
        animeMap.put(anime1.getId(),anime1);

        Anime2 anime2 = new Anime2();
        anime2.setId(2);
        animeMap.put(anime2.getId(),anime2);

        Anime3 anime3 = new Anime3();
        anime3.setId(3);
        animeMap.put(anime3.getId(), anime3);
    }
}