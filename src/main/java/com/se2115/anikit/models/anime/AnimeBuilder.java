package com.se2115.anikit.models.anime;

import com.se2115.anikit.interfaces.builder.ProjectBuilder;

public class AnimeBuilder implements ProjectBuilder {
    private Anime anime;

    @Override
    public void setTitle(String title) {
        anime.setTitle(title);
    }

    @Override
    public void setDescription(String description) {
        anime.setDescription(description);
    }

    @Override
    public void setCover(String cover) {
        anime.setCover(cover);
    }

    @Override
    public void setState(AnimeState state) {
        anime.setState(state);
    }

    public Anime getAnime(){
        return anime;
    }
}
