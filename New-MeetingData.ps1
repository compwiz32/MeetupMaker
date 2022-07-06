function New-MeetingData {

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

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [DateTime]$MeetingDate,

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [String]$MeetingStartTime,

        [ValidateSet("Hybrid", 'InPerson', 'Remote')]
        [string]$EventType,

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
        $EventDuration = "2 Hours"
    }

    process {
        $global:MeetingInfo = [PSCustomObject]@{
            Title          = $Title + " " + "(" + $($SpeakerProfile.Name) + ")"
            MeetingDate    = $MeetingDate
            StartTime      = $MeetingStartTime
            EventType      = $EventType
            EventDuration  = $EventDuration
            VideoChatLink  = $VideoChatLink
            TimeZoneInfo   = $TimeZoneInfo
            SocialHashTags = $SocialHashTags
            VideoHashTags  = $VideoHashTags
            TagLine        = $Tagline
            Description    = $Description
        }

        $global:MeetingInfo

    }

    end {}
}




