package com.se2115.anikit.interfaces.command;

class ButtonOnCommand implements Command
{
    Button button;

    // The constructor is passed the light it
    // is going to control.
    public ButtonOnCommand(Button light)
    {
        this.button = light;
    }
    public void execute()
    {
        button.on();
    }
}