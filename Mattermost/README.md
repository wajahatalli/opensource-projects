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

<strong><hr></strong>

<h1>Automate the Backup of All the mattermost Volumes and other data</h1>
<ul>
    <li>1. run the <strong>mattermost-backup.sh</strong> script in your host system directory "/opt/mattermost_backup".</li>
    <li>2. It will backup everything <strong>(PostgreSQL + Mattermost volumes)</strong> daily.</li>
    <li>3. Run this script to test or do the backup.</li>
    <li>4. You should see backups generated in /opt/mattermost-backup/. </li>
</ul>
<h2>Automate the script to run everyday</h2>
<ul>
    <li>1. sudo crontab -e 0 2 * * * /opt/mattermost_backup.sh >> /opt/mattermost_backup.log 2>&1</li>
    <li>2. To view the genereated LOGS of this backup, run <strong>"cat /opt/mattermost_backup.log"</strong>.</li>
</ul>
<strong><hr></strong>

<h1>To Restore the Backup</h1>
<ul>
    <li>Move into the backup directory, In my case "/opt/mattermost_backup"</li>
    <li>run the restore.sh file "./restore.sh</li>
    <li>Data will be restored</li>
</ul>