package com.se2115.anikit.interfaces.adapter;

import com.se2115.anikit.models.user.User;

class UserAdapter implements Access
{
    IUser user;
    public UserAdapter(IUser user)
    {

        this.user = user;
    }

    public void tryit()
    {
        user.watchanime();
    }
}