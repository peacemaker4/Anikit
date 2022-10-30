package com.se2115.anikit.models.anime;

public class FinishedState implements AnimeState{
    @Override
    public void next(Anime anime) {
        System.out.println("Anime is finished");
    }

    @Override
    public void prev(Anime anime) {
        anime.setState(new OngoingState());
    }

    @Override
    public String returnStatus() {
        return "Finished";
    }
}
