function New-MeetingMetaData {
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
        [ValidateSet('RemoteEvent', "HybridEvent", 'LocalOnlyEvent')]
        [string]$EventType,

        [string]$LocationAddress = "3030 Slater Rd, Morrisville, NC 27560",
        [string]$LocationNotes = "Check in at front desk and you will be escorted to the meeting room"
    )

    begin {

       $HybridEventNotes = "This is hybrid event. You can attend in-person or remotely via Teams. If you are attending in person, you need to visit http://link.commandline.ninja/rtpsugvistorlist and add you name to visitor list."

        $RemoteAttendeeNotes = "Remote Attendes, please use $($MeetupEventInfo.VideoChatLink) to join the meeting."

        $MeetupFooter = @"
Want to know what time this meeting is in your time zone?
$($MeetupEventInfo.TimeZoneInfo)

About RTPSUG:
We're a group of PowerShell pros from all walks of life who love to share ideas with fellow community members. Our meetings are open to anyone who would like to talk about and learn more about how to PowerShell!

Notice of Event Recording:
We record all of our meetings and place the recordings on our YouTube channel a few days after our meetings. By attending this meeting, you agree to allow us to use any recordings of yourself for later use and posted in public forums such as YouTube and Reddit.
"@

        $YouTubeFooter = @"
About RTPSUG:
The Research Triangle PowerShell Users Group (RTPSUG) is the largest PowerShell group in the world! We meet twice a month to discuss topics and trends related to PowerShell and automation. Our topics range from beginner to advanced concepts and give people the opportunity to learn new skills and ask questions. Our mission is to create a space for all attendees to feel welcome and be part of a community. For more information on our group, please visit any of following links:

WEB: https://rtpsug.com
MEETUP: https://www.meetup.com/Research-Triangle-PowerShell-Users-Group
LINKEDIN: https://www.linkedin.com/company/rtpsug/
TWITTER: https://twitter.com/rtpsug
GITHUB: https://github.com/rtpsug
"@

        $RecordingNotice = "We record all of our meetings and place the recordings on our YouTube channel a few days after our meetings. By attending this meeting, you agree to allow us to use any recordings of yourself for later use and posted in public forums such as YouTube and Reddit."


        $YouTubeInfo = [PSCustomObject]@{
            VideoDescription = @"
$($MeetupEventInfo.EventDescription)

Speaker Bio:
$($SpeakerProfile.Bio)

About the Research PowerShell UserGroup:
$($YouTubeFooter)
"@
        }

    }

    process {
        $global:MeetingMetaData = [PSCustomObject]@{
            Title              = $MeetupEventInfo.Title
            Date               = $MeetupEventInfo.Date
            Time               = $MeetupEventInfo.StartTime
            EventDuration      = $MeetupEventInfo.EventDuration
            EventType          = $EventType
            LocationAddress    = $LocationAddress
            LocationNotes      = $LocationNotes
            VideoChatLink      = $MeetupEventInfo.VideoChatLink
            MeetupDescription  = @"
$($MeetupEventInfo.Tagline)

$($MeetupEventInfo.Description)

Speaker Bio:
$($SpeakerProfile.SpeakerBio))

Meeting Attendance Info:
$HybridEventNotes

$MeetupFooter

Recording Notice:
$RecordingNotice
"@

            YouTubeDescription = @"
$($MeetupEventInfo.Tagline)

$($MeetupEventInfo.Description)

Speaker Bio:
$($SpeakerProfile.SpeakerBio))

$($YouTubeFooter)
"@
        SocialMediaText    = $($MeetupEventInfo.TagLine)
        SocialHashTags     = $($MeetupEventInfo.SocialHashTags)
        VideoHashTags      = $($MeetupEventInfo.VideoHashTags)
    }

    $global:SpeakerProfile

    $global:MeetingMetaData
}

}