$MeetingInfoSplat = @{
    Title = "Getting started with the Secret Mangement Module"
    MeetingDate = "09/20/2022"
    EventType = "Hybrid"
    MeetingStartTime = "6:00 pm"

    VideoChatLink = "https://meeting.rtpsug.com/"

    TimeZoneInfo = "https://meeting.rtpsug.com/timezoneinfo"

    Tagline = "$($SpeakerProfile.Name) will show you HOW and WHY to use the Secret Management module to manage your secrets."

    Description = @"
You may have heard about the recent UBER breach that was caused by someone hard coding admin credentials into a script and then that script being discovered by an intruder. The shocking thing about this breach is that it was so easily preventable. One method to prevent privileged information from being accessed easily is to use a credential manager.

$($SpeakerProfile.Name) will show you HOW and WHY to use the Secret Management module to manage your secrets. This session will cover installation and configuration, daily usage, and finsh up with how to set up and connect to a remote vault in the cloud!
"@

    SocialHashTags = "#PowerShell, #AZKeyvault, #SecretManagment"

    VideoHashTags = "PowerShell secretmanagement module tutorial","PowerShell SecretManagement How to","Getting started with the PowerShell SecretManagement module", "Automating secret management with PowerShell", "PowerShell & Azure", "Learn how to setup your first PowerShell secret management vault","PowerShell","PowerShell SecretManagement", "Getting started with Azure Keyvault and PowerShell", "AZKeyvault", "Azure Keyvault"
}

New-MeetingData @MeetingInfoSplat
