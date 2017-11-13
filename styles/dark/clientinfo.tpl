<!--
TeamSpeak 3 Client Info Frame Template

Copyright (c) 2009-2016 TeamSpeak Systems GmbH
Copyright (c) 2017 random-host.com

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can also use
%%?CLIENT_NAME%% (note the question mark), which is a tiny "if"- query. Use it, to remove the whole
line, if a variable is empty or just "0".

Templates must be placed in in a sub folder named like the theme (e.g. "styles/example/").

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins!

Options (remove the "#" to enable):

#%%AVATAR_MAX_WIDTH%%128
#%%AVATAR_MAX_HEIGHT%%128
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replaceable variables for clients:

CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_COUNTRY_IMAGE_SCALED
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE   [Alpha|Beta|Stable]
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

<style type="text/css">
    hr {
        border: solid 1px #484C52;
        background-color: #484C52;
    }
</style>

<!-- begin dummy container including tooltip (single line html table) -->

<div class="InfoFrame" title="<table><tr><td><b><nobr>%%TR_CLIENT_CREATED%%:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_CREATED%%</nobr></td></tr><tr><td><b><nobr>%%TR_CLIENT_LASTCONNECTED%%:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_LASTCONNECTED%%</nobr></td></tr><tr><td><b><nobr>%%TR_CLIENT_TOTALCONNECTIONS%%:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_TOTALCONNECTIONS%%</nobr></td></tr><tr><td colspan=2><hr /></td></tr><tr><td><b><nobr>%%TR_CLIENT_VERSION%%:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_VERSION%% %%CLIENT_VERSION_STATE%%</nobr></td></tr></table>">

    <!-- begin title container -->

    <div class="InfoFrame_Title" dir="LTR">
        %%?CLIENT_COUNTRY_IMAGE_SCALED%%
        <a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">&nbsp;%%CLIENT_NAME%%&nbsp;</a>
        <span class="InfoFrame_CustomNick" title="Custom Nickname">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>
    </div>

    <hr/>

    <!-- begin basic info table -->

    <table class="InfoFrame_Table">
        <tr>
            <td class="Bottom Label">%%TR_CLIENT_VERSION%%:</td>
            <td class="Bottom">%%TR_CLIENT_VERSION_LONG%%</td>
        </tr>
        <tr><td class="Label">%%TR_CLIENT_CONNECTED_SINCE%%:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
        <tr><td class="Label">%%?TR_CLIENT_DESCRIPTION%%:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
        <tr><td class="Label">%%?TR_CLIENT_VOLUME_MODIFIER%%:</td><td class="Important">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
    </table>

    <!-- begin plugin info table -->

    <br/>
    <table class="InfoFrame_Table">%%?PLUGIN_INFO_DATA%%</table>

    <!-- begin permission info table -->

    <table class="InfoFrame_Table Space-Bot">
        <tr><td class="Label Space-Top">%%TR_CLIENT_SERVER_GROUPS%%:</td></tr>
        <tr><td class="List">
                <table>
                    <tr valign="middle"><td>%%CLIENT_SERVER_GROUP_ICON%%</td><td>%%CLIENT_SERVER_GROUP_NAME%%</td></tr>
                </table>
        </td></tr>
        <tr><td class="Label Space-Top">%%TR_CLIENT_CHANNEL_GROUP%%:</td></tr>
        <tr><td class="List">
                <table>
                    <tr valign="middle"><td>%%CLIENT_CHANNEL_GROUP_ICON%%</td><td>%%CLIENT_CHANNEL_GROUP_NAME%%</td></tr>
                </table>
        </td></tr>
        <tr><td class="Important"><br/>*** %%?TR_CLIENT_TALK_REQUEST_TIME%%</td></tr>
        <tr><td class="Important">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
    </table>

</div>
