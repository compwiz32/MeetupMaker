$SpeakerSplat = @{
    FirstName     = 'Mike'
    LastName      = 'Kanakos'
    Nickname      = 'the commandline ninja'
    EmailAddress  = 'mkanakos@gmail.com'
    Website       = 'https://commandline.ninja'
    TwitterHandle = '@mikekanakos'
    GitHubAddress = 'https://github.com/compwiz32'
    SpeakerBio    = "is a multi-year Microsoft MVP and Senior Infrastructure Tools Engineer for Invisalign focusing on creating automation to eliminate manual workloads."
}

New-SpeakerProfile @SpeakerSplat
