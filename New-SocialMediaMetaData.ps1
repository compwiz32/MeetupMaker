function New-SocialMediaMetaData {
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
    param ()

    begin {

        $LocationAddress = "3030 Slater Rd, Morrisville, NC 27560"
        $LocationNotes = "Check in at front desk and then we escort you to the meeting room."

        $HybridEventNotifier = "This is a hybrid event. You can attend in-person or online via Microsoft Teams. See below for important details for attending in-person."

        $LocalEventNotifier = "This is an in-person event. We are not offering a remote option for this meeting."

        $HybridEventInPersonSignup = "If you are attending in-person, you need to visit https://meeting.rtpsug.com/visitorlist and add your name to the onsite visitor guest list."

        $RemoteAttendeeNotes = "If you are attending via Remote, please use $($MeetingInfo.VideoChatLink) to join the meeting using Microsoft Teams. You can download the MS Teams client from https://www.microsoft.com/en-us/microsoft-teams/download-app"

        $MeetupFooter = @"
Want to know what time this meeting is in your time zone?
$($MeetingInfo.TimeZoneInfo)
"@

        $RTPSUGInfo = @"
About RTPSUG:
We're a group of PowerShell pros from all walks of life who love to share ideas with fellow community members. Our meetings are open to anyone, regardless of skill level, who would like to talk about and learn more about how to use PowerShell! If you're wondering if this group is for you... you should probably attend.
"@

        $YouTubeFooter = @"
The Research Triangle PowerShell Users Group (RTPSUG) is the largest PowerShell group in the world! We meet twice a month to discuss topics and trends related to PowerShell and automation. Our topics range from beginner to advanced concepts and give people the opportunity to learn new skills and ask questions. Our mission is to create a space for all attendees to feel welcome and be part of a community. For more information on our group, please visit any of following links:

WEB: https://rtpsug.com
MEETUP: https://www.meetup.com/Research-Triangle-PowerShell-Users-Group
LINKEDIN: https://www.linkedin.com/company/rtpsug/
TWITTER: https://twitter.com/rtpsug
GITHUB: https://github.com/rtpsug
"@

        $RecordingNotice = "We record all of our meetings and place the recordings on our YouTube channel a few days after our meetings. By attending this meeting, you agree to allow us to use any recordings of yourself for later use and posted in public forums such as YouTube and Reddit."


        $YouTubeInfo = @"
$($MeetingInfo.Description)

Speaker Bio:
$($SpeakerProfile.SpeakerBio)

About RTPSUG:
$YouTubeFooter
"@

    } #end begin

    process {
        $global:SocialMediaInfo = [PSCustomObject]@{
            Title              = $MeetingInfo.Title
            Date               = $MeetingInfo.MeetingDate
            Time               = $MeetingInfo.StartTime
            EventDuration      = $MeetingInfo.EventDuration
            EventType          = $MeetingInfo.EventType
            LocationAddress    = $LocationAddress
            LocationNotes      = $LocationNotes
            VideoChatLink      = $MeetingInfo.VideoChatLink
            MeetupDescription  = switch ($($MeetingInfo.EventType)) {
                "Hybrid" {
                    @"
$($MeetingInfo.Tagline)

$HybridEventNotifier

Meeting Description:
$($MeetingInfo.Description)

Speaker Bio:
$($SpeakerProfile.SpeakerBio)

Meeting Attendance Info:
$HybridEventInPersonSignup

$RemoteAttendeeNotes

$MeetupFooter

$RTPSUGInfo

Recording Notice:
$RecordingNotice
"@
                } #end switch Hybrid
                "LocalOnly" {
                    @"
$($MeetingInfo.Tagline)

Meeting Description:
$($MeetingInfo.Description)

Speaker Bio:
$($SpeakerProfile.SpeakerBio))

Meeting Attendance Info:
$LocalEventNotifier

Recording Notice:
$RecordingNotice
"@

                    YouTubeDescription = @"
$($MeetingInfo.Tagline)

$($MeetingInfo.Description)

Speaker Bio:
$($SpeakerProfile.SpeakerBio)

You can find more about $($SpeakerProfile.FirstName) at the following online sites:

Twitter: $($SpeakerProfile.Twitter)
Email: $($SpeakerProfile.Email)
GitHub: $($SpeakerProfile.GitHub)
Website: $($SpeakerProfile.Website)

$($YouTubeFooter)
"@
                    SocialMediaText    = $($MeetingInfo.TagLine)
                    SocialHashTags     = $($MeetingInfo.SocialHashTags)
                    VideoHashTags      = $($MeetingInfo.VideoHashTags)
                } #end switch LocalOnly
                Default {
                    @"
$($MeetingInfo.Tagline)

Meeting Description:
$($MeetingInfo.Description)

Speaker Bio:
$($SpeakerProfile.SpeakerBio))

$MeetupFooter

Recording Notice:
$RecordingNotice
"@
                } #end switch default
            }
            YouTubeDescription = $YouTubeInfo #end Switch
        } #end PSCustomObject
        $global:SocialMediaInfo
    } #end Process
} #end function

