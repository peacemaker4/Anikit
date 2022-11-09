package com.se2115.anikit.interfaces.command;

class ButtonOffCommand implements Command
{
    Button button;
    public ButtonOffCommand(Button light)
    {
        this.button = light;
    }
    public void execute()
    {
        button.off();
    }
}