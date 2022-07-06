$MeetingInfoSplat = @{
    Title = "Test Your Code with Pester"
    MeetingDate = "07/06/2022"
    EventType = "Hybrid"
    MeetingStartTime = "6:00 pm"

    VideoChatLink = "https://meeting.rtpsug.com/"

    TimeZoneInfo = "https://meeting.rtpsug.com/timezoneinfo"

    Tagline = "$($SpeakerProfile.Name) will demo how to get started with Pester and highlight what's changed in Pester v5."

    Description = @"
Testing, testing... Is this thing on? Jokes aside, you know that you should test your code before it goes into production. If you are scratching your head on how to test your code or why you even need to test, then this meeting is for you!

We're going to show you what 'unit testing' is with Pester, how to get started and why you need to start doing this ASAP. $($SpeakerProfile.Name) will demo how to get started with Pester, why you need to be using Pester and highlight what's changed in Pester v5.
"@

    SocialHashTags = "#PowerShell","#Pester"

    VideoHashTags = "Powershell Pester Tutorial","Powershell Pester Examples","PowerShell Unit Testing", "PowerShell debugging"
}

New-MeetingData @MeetingInfoSplat
