<!--
TeamSpeak 3 Channel Tooltip Template

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
CHANNEL_ID
CHANNEL_TOPIC
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_NEEDED_TALK_POWER
CHANNEL_ORDER
CHANNEL_CODEC
CHANNEL_CODEC_BITRATE
CHANNEL_FLAGS
CHANNEL_SUBSCRIPTION
CHANNEL_CLIENTS_COUNT
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
CHANNEL_DESCRIPTION
CHANNEL_ICON
PLUGIN_INFO_DATA
IMAGES_MAX_WIDTH
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
-->

<style type="text/css">
    table#info {
        border-collapse: collapse;
        border-spacing: 0;
    }

    td {
        padding: 0 4px 0 1px;
        white-space: nowrap;
    }

    td.label {
        font-weight: bold;
    }

    .Highlight {
        color: #1CB0F4;
    }

    .Important {
        color: #E33938;
    }
</style>

<table id="info">
    <tr><td class="label">%%TR_CHANNEL_NAME%%:</td><td class="Highlight">%%CHANNEL_NAME%%</td></tr>
    <tr><td class="label">%%?TR_CHANNEL_TOPIC%%:</td><td>%%?CHANNEL_TOPIC%%</td></tr>
    <tr><td class="label">%%TR_CHANNEL_CODEC%%:</td><td>%%CHANNEL_CODEC%%</td></tr>
    <tr><td class="label">%%TR_CHANNEL_CODEC_QUALITY%%:</td><td>%%CHANNEL_CODEC_QUALITY%%</td></tr>
    <tr><td class="label">%%?TR_CHANNEL_FLAGS%%:</td><td class="Highlight">%%?CHANNEL_FLAGS%%</td></tr>
    <tr><td class="label">%%?TR_CHANNEL_CLIENTS_COUNT%%:</td><td>%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
    <tr><td class="label">%%?TR_CHANNEL_NEEDED_TALK_POWER%%:</td><td class="Important">%%?CHANNEL_NEEDED_TALK_POWER%%</td></tr>
    <tr><td class="label">%%TR_CHANNEL_SUBSCRIPTION%%:</td><td>%%CHANNEL_SUBSCRIPTION%%</td></tr>
    <tr><td class="label">%%TR_CHANNEL_VOICE_DATA_ENCRYPTED%%:</td><td>%%CHANNEL_VOICE_DATA_ENCRYPTED%%</td></tr>
    %%?PLUGIN_INFO_DATA%%
</table>

<p class="Important" style="margin-top: 4px;">%%?TEMP_CHANNEL_TIME_TO_DELETE%%</p>
