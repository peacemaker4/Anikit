package com.se2115.anikit.models.anime;

public class OngoingState implements AnimeState{
    @Override
    public void next(Anime anime) {
        anime.setState(new FinishedState());
    }

    @Override
    public void prev(Anime anime) {
        anime.setState(new AnnouncedState());
    }

    @Override
    public String returnStatus() {
        return "Ongoing";
    }
}
