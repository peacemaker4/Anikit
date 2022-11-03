package com.se2115.anikit.interfaces.bridge;

public class Site {
    private ITheme site_theme;

    public ITheme getSite_theme() {
        return site_theme;
    }

    public void setSite_theme(ITheme site_theme) {
        this.site_theme = site_theme;
    }

    public Site(ITheme theme)
    {
        site_theme = theme;
    }
    public void SetTheme()
    {
        site_theme.ChangeTheme();
    }

}
