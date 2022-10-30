package com.se2115.anikit.models.anime;

public interface AnimeState {
    void next(Anime anime);
    void prev(Anime anime);
    String returnStatus();
}
