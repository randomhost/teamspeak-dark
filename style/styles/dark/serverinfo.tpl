<!--
TeamSpeak 3 Server Info Frame Template

Copyright (c) 2009-2020 TeamSpeak Systems GmbH
Copyright (c) 2020 random-host.tv

The replaceable variables are embedded in "%%" like %%SERVER_NAME%%. At this time you can also use
%%?SERVER_NAME%% (note the question mark), which is a tiny "if"- query. Use it, to remove the whole
line, if a variable is empty or just "0".

Templates must be placed in in a sub folder named like the theme (e.g. "styles/example/").

Replaceable variables for server:

SERVER_NAME
SERVER_WELCOMEMESSAGE
SERVER_HOSTMESSAGE
SERVER_ID
SERVER_UNIQUE_ID
SERVER_VERSION
SERVER_PLATFORM
SERVER_CLIENTS_ONLINE
SERVER_QUERYCLIENTS_ONLINE
SERVER_CHANNELS_ONLINE
SERVER_UPTIME
SERVER_CLIENT_CONNECTIONS
SERVER_QUERY_CLIENT_CONNECTIONS
SERVER_ADDRESS
SERVER_PORT
SERVER_ICON
SERVER_ICON_SCALED
SERVER_LICENSE
PLUGIN_INFO_DATA
SERVER_MAXCLIENTS
SERVER_NO_RESERVED_SLOTS
SERVER_RESERVED_SLOTS
SERVER_REFRESH_INACTIVE
SERVER_REFRESH_ACTIVE
SERVER_REFRESH_ICON
-->

<!-- begin dummy container including tooltip (single line html table) -->

<div class="InfoFrame" title="<table><tr><td><b><nobr>%%TR_SERVER_CLIENTS_ONLINE%%:&nbsp;</nobr></b></td><td><nobr>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</nobr></td></tr><tr><td><b><nobr>%%TR_SERVER_CLIENT_CONNECTIONS%%:&nbsp;</nobr></b></td><td><nobr>%%SERVER_CLIENT_CONNECTIONS%%</nobr></td></tr><tr><td colspan=2><hr /></td></tr><tr><td><b><nobr>%%TR_SERVER_VERSION%%:&nbsp;</nobr></b></td><td><nobr>%%SERVER_VERSION%%</nobr></td></tr></table>">

    <!-- begin title container -->

    <div class="InfoFrame_Title" dir="LTR">
        %%SERVER_ICON_SCALED%%
        &nbsp;
        <a href="channelid://0" class="TextMessage_ServerLink">%%SERVER_NAME%%</a>
    </div>

    <hr />

    <!-- begin basic info table -->

    <table class="InfoFrame_Table">
        <tr><td class="Label">%%TR_SERVER_NICKNAMES%%:</td><td>%%?SERVER_NICKNAMES%%</td></tr>
        <tr>
            <td class="Label">%%TR_SERVER_ADDRESS%%:</td>
            <td>
                %%SERVER_ADDRESS%%
                :%%?SERVER_PORT%%
            </td>
        </tr>
        <tr>
            <td class="Bottom Label">%%TR_SERVER_VERSION%%:</td>
            <td class="Bottom">%%SERVER_VERSION_SHORT%% on %%SERVER_PLATFORM%%</td>
        </tr>
        <tr>
            <td class="Label">%%TR_SERVER_LICENSE%%:</td>
            <td>%%SERVER_LICENSE%%</td>
        </tr>
        <tr>
            <td class="Label">%%TR_SERVER_UPTIME%%:</td>
            <td>%%SERVER_UPTIME%%</td>
        </tr>
    </table>

    <br />

    <!-- begin connection info table -->

    <table class="InfoFrame_Table">
        <tr>
            <td class="Label">%%TR_SERVER_CLIENTS_ONLINE%%:</td>
            <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
            <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="Important">-%%?SERVER_RESERVED_SLOTS%% reserved</span>)</td>
        </tr>
        <tr>
            <td class="Label">%%TR_SERVER_CHANNELS_ONLINE%%:</td>
            <td>%%SERVER_CHANNELS_ONLINE%%</td>
        </tr>
        %%?PLUGIN_INFO_DATA%%
    </table>

    <br />

    <!-- begin refresh table -->

    <table class="InfoFrame_Table">
        <tr><td>
            %%SERVER_REFRESH_ICON%%
            &nbsp;
            <a class="Inactive" href="%%?SERVER_REFRESH_INACTIVE%%">%%?TR_SERVER_REFRESH_INACTIVE%%</a>
            <a class="Active" href="%%?SERVER_REFRESH_ACTIVE%%">%%?TR_SERVER_REFRESH_ACTIVE%%</a>
        </td></tr>
    </table>

</div>
