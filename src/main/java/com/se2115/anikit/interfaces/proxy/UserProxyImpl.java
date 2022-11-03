package com.se2115.anikit.interfaces.proxy;

import com.se2115.anikit.models.user.User;

public class UserProxyImpl implements UserProxy {

    private boolean _logged;
    private User user;

    public UserProxyImpl(boolean _logged) {
        this._logged = _logged;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public User getUser() {
        if(user == null){
            user = new User();
            if(_logged){
                user = new AuthorizedUser();
            }
        }
        return user;
    }
}
