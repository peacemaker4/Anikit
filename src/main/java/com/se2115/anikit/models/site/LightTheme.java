package com.se2115.anikit.models.site;

import com.se2115.anikit.interfaces.bridge.ITheme;

public class LightTheme implements ITheme {
    @Override
    public void ChangeTheme() {
        System.out.println("LIGHT THEME");
    }
}
