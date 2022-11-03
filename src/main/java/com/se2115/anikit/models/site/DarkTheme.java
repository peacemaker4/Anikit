package com.se2115.anikit.models.site;

import com.se2115.anikit.interfaces.bridge.ITheme;

public class DarkTheme implements ITheme {
    @Override
    public void ChangeTheme() {
        System.out.println("DARK THEME");
    }
}
