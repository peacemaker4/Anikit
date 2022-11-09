package com.se2115.anikit.interfaces.prototype;

import com.se2115.anikit.models.anime.Anime;
import com.se2115.anikit.models.anime.OngoingState;

public class Anime1 extends Anime {

    public Anime1(){
        this.setTitle("Chainsaw Man");
        this.setDescription("Best anime 2022");
        this.setState(new OngoingState());
    }

}