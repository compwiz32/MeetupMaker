$SpeakerSplat = @{
    FirstName     = "Jonathan"
    LastName      = "Moss"
    Nickname      = $null
    EmailAddress  = "jwmoss88@gmail.com"
    Website       = $null
    TwitterHandle = "@jwmoss"
    GitHubAddress = "https://github.com/jwmoss"
    SpeakerBio    = "is a Release Operations Engineer for Mozilla and a long time PowerShell community contributor."
}

New-SpeakerProfile @SpeakerSplat
