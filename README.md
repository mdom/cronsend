= cronsend

cronsend sends reminder mail via a custom mail header, cron and
sendmail. Just put reminder mails with their headers in _/etc/cronsend/_ and
add special _X-Cron_-Header with the cron time fields. For example:

    Subject: Bring out trash!
    X-Cron: 00 12 * * mo
    X-Cron: 15 18 * * fr
    
    Hey you, better hurry!

Calling ``cronsend update`` will create a crontab file under
_/etc/cron.d/cronsend_.  The cron header is stripped before the mail
is sent. You can change any of the following configuration variables
in _/etc/cronsendrc_.

= Variables

* cron\_file

Where to create the cronfile. Defaults to _/etc/cron.d/cronsend_.

* user

Defines the username field for cron. Defaults to _root_.

* mail_dir

Directory with the mail files. Defaults to _/etc/cronsend/_.
 
# COPYRIGHT AND LICENSE

Copyright 2016 Mario Domgoergen <mario@domgoergen.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
