$EventInfoSplat = @{
    Title = "Azure Functions & PowerShell: Migrating The Unmigrateable"
    Date = "06/15/2022 6:00 pm"
    VideoChatLink = "https://meeting.rtpsug.com/"
    TimeZoneInfo = "https://link.rtpsug.com/timezoneinfo"
    Tagline = "What do you do when you need to migrate and modernize a ton of Azure resources with zero downtime? Join $($SpeakerProfile.Name) for some tales about how he used Azure Functions to automate migrating thousands of VM's, SQL DB's and storage accounts with zero downtime."
    Description = "You've probably heard of Azure functions, but maybe you're not sure where to get started or what you can do with them. Maybe you use Azure functions but aren't using them to their full capability. $($SpeakerProfile.Name) will start with a brief introduction to Azure Functions. Then he will show how you can use PowerShell and Azure functions to manage your Azure resources. From there, $($SpeakerProfile.FirstName) will dive into some specific scenarios that he encountered and how he engineered solutions when one didn't seem possible."
    SocialHashTags = "#PowerShell","#Azure","#AzureFuncions"
    VideoHashTags = "azure functions migration","azure functions tutorial","Using PowerShell with Azure Functions"
}

New-MeetupEvent @EventInfoSplat
