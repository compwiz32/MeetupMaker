$EventInfoSplat = @{
    Title = "A hitchhiker's guide to writing scripts"
    Date = "5/18/2022 6:00 pm"
    VideoChatLink = "http://link.commandline.ninja/may-meeting2-2022"
    TimeZoneInfo = "https://everytimezone.com/s/a3952c2f"
    Tagline = "Need to automate something with PowerShell but don't know where to start? Join $($SpeakerProfile.Name) for look at how to get started!"
    Description = "Maybe you've found a script somewhere and want to adjust it to work well for you (and not be a bane on future self, trying to fix it a year down the road)? DON'T PANIC! We can help! $($SpeakerProfile.Name) will cover all the basics of how to write good scripts. We'll discuss the following: How to write proper scripts, How to run them easily. How to clean up an existing script and How to author your own scripts from scratch. Last but not least, we'll cover the best Practices for designing scripts your future self is going to like debugging."
    SocialHashTags = "#PowerShell"
    VideoHashTags = "powershell scripting tutorial","powershell script design tutorial","powershell script design for beginners","getting started with PowerShell"
}

New-MeetupEvent @EventInfoSplat

