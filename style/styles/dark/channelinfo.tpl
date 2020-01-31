<!--
TeamSpeak 3 Channel Info Frame Template

Copyright (c) 2009-2020 TeamSpeak Systems GmbH
Copyright (c) 2020 random-host.tv

The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use
%%?CHANNEL_NAME%% (note the question mark), which is a tiny "if"- query. Use it, to remove the whole
line, if a variable is empty or just "0".

Templates must be placed in in a sub folder named like the theme (e.g. "styles/example/").

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins!

Options (remove the "#" to enable):

#%%IMAGES_MAX_WIDTH%%256
#%%IMAGES_MAX_HEIGHT%%256

Replaceable variables for channels:

CHANNEL_NAME
CHANNEL_NAME_PLAIN
CHANNEL_ID
CHANNEL_ICON
CHANNEL_ICON_SCALED
CHANNEL_TOPIC
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_NEEDED_TALK_POWER
CHANNEL_MODERATED_ICON
CHANNEL_ORDER
CHANNEL_CODEC
CHANNEL_CODEC_BITRATE
CHANNEL_FLAGS
CHANNEL_FLAG_PERMANENT
CHANNEL_FLAG_SEMI_PERMANENT
CHANNEL_FLAG_TEMPORARY
CHANNEL_FLAG_PASSWORD
CHANNEL_FLAG_DEFAULT
CHANNEL_FLAG_NORMAL
CHANNEL_FLAG_SPACER
CHANNEL_FLAG_FORCED_SILENCE
CHANNEL_SUBSCRIPTION
CHANNEL_CLIENTS_COUNT
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
CHANNEL_DESCRIPTION
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
PLUGIN_INFO_DATA
IMAGES_MAX_WIDTH
IMAGES_MAX_HEIGHT
OPEN_FILE_BROWSER
FILE_BROWSER_ICON
-->

<!-- begin dummy container including tooltip (single line html table) -->

<div class="InfoFrame" title="<table><tr><td><b><nobr>%%TR_CHANNEL_SUBSCRIPTION%%:&nbsp;</nobr></b></td><td><nobr>%%CHANNEL_SUBSCRIPTION%%</nobr></td></tr><tr><td><b><nobr>%%TR_CHANNEL_NEEDED_TALK_POWER%%:&nbsp;</nobr></b></td><td><nobr>%%CHANNEL_NEEDED_TALK_POWER%%</nobr></td></tr><tr><td colspan=2><hr /></td></tr><tr><td><b><nobr>%%TR_CHANNEL_CODEC_QUALITY%%:&nbsp;</nobr></b></td><td><nobr>%%CHANNEL_CODEC_QUALITY%% (%%TR_CHANNEL_CODEC_BITRATE%%: %%CHANNEL_CODEC_BITRATE%%/s)</nobr></td></tr><tr><td><b><nobr>%%TR_CHANNEL_VOICE_DATA_ENCRYPTED%%:&nbsp;</nobr></b></td><td><nobr>%%CHANNEL_VOICE_DATA_ENCRYPTED%%</nobr></td></tr></table>">

    <!-- begin title container -->

    <div class="InfoFrame_Title" dir="LTR">
        %%CHANNEL_ICON_SCALED%%
        &nbsp;
        <a href="channelid://%%CHANNEL_ID%%" class="TextMessage_ChannelLink">%%CHANNEL_NAME%%</a>
    </div>

    <hr/>

    <!-- begin basic info table -->

    <table class="InfoFrame_Table">
        <tr><td class="Label">%%?TR_CHANNEL_TOPIC%%:</td><td>%%?CHANNEL_TOPIC%%</td></tr>
        <tr>
            <td class="Label">%%TR_CHANNEL_CODEC%%:</td>
            <td>
                %%CHANNEL_CODEC%%
            </td>
        </tr>
        <tr><td class="Label">%%?TR_CHANNEL_FLAGS%%:</td><td class="Highlight">%%?CHANNEL_FLAGS%%</td></tr>
        <tr><td class="Label">%%?TR_TEMP_CHANNEL_TIME_TO_DELETE%%:</td><td class="Important">%%?TEMP_CHANNEL_TIME_TO_DELETE%%</td></tr>
        <tr><td class="Label">%%TR_CHANNEL_CLIENTS_COUNT%%:</td><td>%%CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
        <tr><td class="Label">%%?TR_CHANNEL_MODERATED%%:</td><td class="Important">%%CHANNEL_MODERATED_ICON%%&nbsp;&nbsp;%%TR_YES%%</td></tr>
        %%?PLUGIN_INFO_DATA%%
    </table>

    <br/>

    <!-- begin description info table -->

    <table class="InfoFrame_Table" width="100%"><tr><td class="Label">%%?TR_CHANNEL_DESCRIPTION%%:</td></tr><tr><td><br/>%%?CHANNEL_DESCRIPTION%%</td></tr></table>

</div>
