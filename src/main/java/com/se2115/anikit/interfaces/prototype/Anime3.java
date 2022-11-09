package com.se2115.anikit.interfaces.prototype;

import com.se2115.anikit.models.anime.Anime;
import com.se2115.anikit.models.anime.FinishedState;
import com.se2115.anikit.models.anime.OngoingState;

public class Anime3 extends Anime {

    public Anime3(){
        this.setTitle("Kimetsu No Yaiba");
        this.setDescription("Best anime 2022");
        this.setState(new OngoingState());
    }

}