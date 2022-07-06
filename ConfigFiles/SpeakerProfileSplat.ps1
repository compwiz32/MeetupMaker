$SpeakerSplat = @{
    FirstName     = "Jonathan"
    LastName      = "Moss"
    Nickname      = $null
    EmailAddress  = "jwmoss88@gmail.com"
    Website       = $null
    TwitterHandle = "@jwmoss"
    GitHubAddress = "https://github.com/jwmoss"
    SpeakerBio    = "is an Release Operations Engineer for Mozilla."
}

New-SpeakerProfile @SpeakerSplat
