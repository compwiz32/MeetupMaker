function New-SpeakerProfile {

    <#
.SYNOPSIS
    A short one-line action-based description, e.g. 'Tests if a function is valid'
.DESCRIPTION
    A longer description of the function, its purpose, common use cases, etc.
.NOTES
    Information or caveats about the function e.g. 'This function is not supported in Linux'
.LINK
    Specify a URI to a help page, this will show when Get-Help -Online is used.
.EXAMPLE
    Test-MyTestFunction -Verbose
    Explanation of the function or its result. You can include multiple examples with additional .EXAMPLE lines
#>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$FirstName,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$LastName,

        [string]$Nickname,

        [string]$EmailAddress,

        [String]$TwitterHandle,

        [string]$GitHubAddress,

        [string]$Website,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$SpeakerBio
    )

    begin {

    }

    process {
        $global:SpeakerProfile = [PSCustomObject]@{
            Name       = $FirstName + " " + $LastName
            FirstName  = $FirstName
            Nickname   = $Nickname
            Email      = $EmailAddress
            GitHub     = $GitHubAddress
            Twitter    = $TwitterHandle
            Website    = $Website
            SpeakerBio = if (!($Nickname)) {
                $FirstName + " " + $LastName + " " + $SpeakerBio
            } else {
                $FirstName + " aka " + $Nickname + " " + $SpeakerBio
            }

        }

        $global:SpeakerProfile
    }

    end {}
}