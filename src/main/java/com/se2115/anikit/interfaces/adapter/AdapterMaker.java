package com.se2115.anikit.interfaces.adapter;

public class AdapterMaker {
    public static void main(String args[])
    {
        Auto auto = new Auto();
        Access access = new AutoWithAccess();

        Access userAdapter = new UserAdapter(auto);

        System.out.println("Autothized user");
        auto.watch();
        auto.watchanime();

        System.out.println("User with access");
        access.tryit();

        System.out.println("UserAdapter result");
        userAdapter.tryit();
    }

}
