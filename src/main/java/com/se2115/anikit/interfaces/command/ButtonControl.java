package com.se2115.anikit.interfaces.command;

class ButtonControl
{
    Command slot;  // only one button

    public ButtonControl()
    {
    }

    public void setCommand(Command command)
    {
        // set the command the remote will
        // execute
        slot = command;
    }

    public void buttonWasPressed()
    {
        slot.execute();
    }
}