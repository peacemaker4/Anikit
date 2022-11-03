package com.se2115.anikit.models.site;

import com.se2115.anikit.dbo.PostgresDBO;
import com.se2115.anikit.interfaces.bridge.ITheme;
import com.se2115.anikit.interfaces.bridge.Site;

public class MainSite extends Site {

    private static MainSite site = null;

    public static MainSite getInstance(){
        if(site == null)
            site = new MainSite(new LightTheme());
        return site;
    }

    public MainSite(ITheme theme) {
        super(theme);
    }
}
