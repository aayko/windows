; This script will toggle mute your microphone on Discord using Win + O
#o:: ; Win + O is the hotkey
SoundGet, mic_mute, MICROPHONE, mute ; Get the current mute state of the microphone
if mic_mute = ON ; If the microphone is muted
{
    SoundSet, +1, MICROPHONE, mute ; Unmute the microphone
    ToolTip, Microphone Unmuted ; Show a tooltip message
}
else ; If the microphone is not muted
{
    SoundSet, +1, MICROPHONE, mute ; Mute the microphone
    ToolTip, Microphone Muted ; Show a tooltip message
}
SetTimer, RemoveToolTip, 1000 ; Remove the tooltip after 1 second
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off ; Stop the timer
ToolTip ; Clear the tooltip
return

