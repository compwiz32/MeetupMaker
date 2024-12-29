$MeetingInfoSplat = @{
    Title = "Building extensible modules with PowerShell"
    MeetingDate = "01/04/2023"
    EventType = "Remote"
    MeetingStartTime = "8:00 pm"

    VideoChatLink = "https://meeting.rtpsug.com/"

    TimeZoneInfo = "https://meeting.rtpsug.com/timezoneinfo"

    Tagline = "$($SpeakerProfile.Name) will chat with us about how to get started with extensible module authoring, and making your PowerShell session pretty."

    Description = @"
Let's talk about writing modules for PowerShell. You know the drill: write scripts, make those scripts re-useable and then package them up into modules to make them easy to distribute... But there's a lot of thought that goes into the architecture of modules. If done right, you can build modules that can allow new capabilities and functionality for the future through extensibility.

$($SpeakerProfile.Name) will chat with us about how to get started with extensible module authoring, and making your PowerShell session pretty. His talk will cover two topics that will seem unrelated at first:
- Ways to write extensible modules and ideas for writing modules that let other modules extend them.
- Reviewing some fancy modules he's written recently: the EzTheme modules for styling PSStyle, PSReadLine, Powerline, and much more.

By the end of this demo you see how these two topics are related and how you can benefit if you build modules to be extensible.
"@

    SocialHashTags = "#PowerShell, #PSStyle, #PSReadLine, #Powerline"

    VideoHashTags = "how to get started with extensible module authoring","learn to build extensible PowerShell modules","PowerShell modules", "PowerShell Best Practices for extensible module authoring", "how to make your code look pretty","PowerShell best practices"
}

New-MeetingData @MeetingInfoSplat
