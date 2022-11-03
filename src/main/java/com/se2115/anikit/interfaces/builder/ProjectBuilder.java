package com.se2115.anikit.interfaces.builder;

import com.se2115.anikit.models.anime.AnimeState;

public interface ProjectBuilder {
    void setTitle(String title);
    void setDescription(String description);
    void setCover(String cover);
    void setState(AnimeState state);
}
