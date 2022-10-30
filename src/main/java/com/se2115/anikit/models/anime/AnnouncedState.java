package com.se2115.anikit.models.anime;

public class AnnouncedState implements AnimeState {
    @Override
    public void next(Anime anime) {
        anime.setState(new OngoingState());
    }

    @Override
    public void prev(Anime anime) {
        System.out.println("Anime is only announced");
    }

    @Override
    public String returnStatus() {
        return "Announced";
    }
}
