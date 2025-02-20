<h1>Create a mattermost folder and move into the directory.</h1>
<ul>
    <li>mkdir mattermost && cd mattermost</li>
    <li>nan docker-compose.yml</li>
    <li>docker-compose up -d</li>
    <li>http://your-ip-address:1000</li>
</ul>
##In this configuration file the port I have assigned is 1000. you can choose your own.##

<h1>Login of PostgreSQL</h1>
<ul>
    <li><strong>Username : PentabitLabs</strong></li>
    <li><strong>Password : ConsoliAds786</strong></li>
</ul>
<br>

<strong><hr></strong>

<h1>Automate the Backup of All the mattermost Volumes and other data</h1>
1. run the <strong>mattermost-backup.sh</strong> script in your host system.
2. It will backup everything <strong>(PostgreSQL + Mattermost volumes)</strong> daily.
3. Run this script to test or do the backup.
4. You should see backups generated in /opt/mattermost-backup/.
<br>
<h3>Automate the script to run everyday</h3>
1. sudo crontab -e 0 2 * * * /opt/mattermost_backup.sh >> /opt/mattermost_backup.log 2>&1
2. To view the genereated LOGS of this backup, run <strong>"cat /opt/mattermost_backup.log"</strong>.
<br>