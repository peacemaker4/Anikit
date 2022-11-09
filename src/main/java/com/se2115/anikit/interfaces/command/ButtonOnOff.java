package com.se2115.anikit.interfaces.command;

import java.awt.*;

class ButtonOnOff
{
    public static void main(String[] args)
    {
        ButtonControl remote =
                new ButtonControl();
        Button button = new Button();


        remote.setCommand(new
                ButtonOnCommand(button));
        remote.buttonWasPressed();

        remote.setCommand(new
                ButtonOffCommand(button));
        remote.buttonWasPressed();


    }
}