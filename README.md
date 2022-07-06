# MeetupMaker

Do you run a user group that uses Meetup for meetings?

I run a very popular user group and I got tired of copy and pasting a bunch of the same txt over and over again from Meetup to YouTube, Twitter, LinkedIn, Reddit and Facebook.

This module is still being built, but the idea is to have a way to build all the meetup meeting data based on who is the speaker for a meeting and the meeting location. Included is also the ability to add in hashtags for social media and YouTube. As of now, you need to populate the data into Meetup, Facebook, YouTube and others but at least it is saved in a central location with formatting for the various media services.

More to come for this module which is still an early alpha build but works in its current form. Right now, it's all coded for the RTPSUG user group but you can easily change the data to your group info.

## How to use these functions

- use the included splat files for your data (see config files folder)). Execute the splats and they will call the functions.

Step1:

- load the functions into memory
  - New-SpeakerProfile.ps1
  - New-MeetingData.ps1
  - New-SocialMediaMetadata.ps1

Step 2:

- Fill out the `SpeakerProfileSplat.ps1` and run the script. It will generate a variable called `$SpeakerProfile`

Step 3:

- Fill out the `MeetingDataSplat.ps1` and run the script. It will generate a variable called `$MeetingInfo`

Step 4:

- Run `New-SocialMediaMetaData.ps1` . It will generate a variable called `$SocialMediaInfo` that will have all the info for a Meetup meeting and the related social media info for various platforms.


## Extras

- New-MeetingChecklist.ps1 - creates a markdown formatted checklist for a meeting
- New-MeetupPlaceholder.ps1 - need to create a quick meeting placeholder? Use this script for the bare minimum of data for an event.