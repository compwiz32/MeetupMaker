function New-MeetupEvent {

    <#
.SYNOPSIS
Short description

.DESCRIPTION
Long description

.EXAMPLE
An example

.NOTES
General notes
#>


    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Title,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [DateTime]$Date = (Get-Date -Format "dddd MM/dd/yyyy HH:mm"),

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [String]$VideoChatLink,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$TimeZoneInfo,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Tagline,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Description,

        [String[]]$SocialHashTags,

        [String[]]$VideoHashTags

    )

    begin {
        $EventDuration = New-Timespan -Hours 2
    }

    process {
        $global:MeetupEventInfo = [PSCustomObject]@{
            Title          = $Title + " " + "(" + $($SpeakerProfile.Name) + ")"
            Date           = $Date
            StartTime      = Get-Date $Date -UFormat "%I:%M %p"
            EventDuration  = $EventDuration
            VideoChatLink  = $VideoChatLink
            TimeZoneInfo   = $TimeZoneInfo
            SocialHashTags = $SocialHashTags
            VideoHashTags  = $VideoHashTags
            TagLine        = $Tagline
            Description    = $Description
        }

        $global:MeetupEventInfo

    }

    end {}
}




