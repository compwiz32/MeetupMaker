function New-MeetupPlaceHolder {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Title,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$SpeakerName,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [datetime]$MeetingDate

    )

    begin {
        $Description = "We're still working on the details. Check back later for more information about this event!"
    }

    process {
        $global:MeetingInfo = [PSCustomObject]@{
            Title          = $Title + " " + "($SpeakerName)"
            Date           = Get-Date $Date -UFormat "%A, %B %d"
            Description    = $Description
        }

        $global:MeetingInfo

    }

    end {

    }
}