package com.se2115.anikit.interfaces.prototype;

import com.se2115.anikit.models.anime.Anime;
import com.se2115.anikit.models.anime.FinishedState;
import com.se2115.anikit.models.anime.OngoingState;

public class Anime2 extends Anime {

    public Anime2(){
        this.setTitle("Jujutsu Kaisen 1");
        this.setDescription("Best anime 2021");
        this.setState(new FinishedState());
    }

}