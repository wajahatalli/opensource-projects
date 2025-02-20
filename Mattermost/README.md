<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mattermost Setup and Automated Backup Guide</title>
    <style>
        body { font-family: Arial, sans-serif; line-height: 1.6; margin: 20px; }
        h1, h2, h3 { color: #333; }
        pre { background-color: #f4f4f4; padding: 10px; border-radius: 5px; }
        code { font-family: monospace; color: #d63384; }
        hr { margin: 20px 0; }
    </style>
</head>
<body>
    <h1>🚀 Mattermost Setup and Automated Backup Guide</h1>

    <h2>Setting Up Mattermost with Docker</h2>

    <h3>1. Create a Project Directory</h3>
    <pre><code>mkdir mattermost &amp;&amp; cd mattermost</code></pre>

    <h3>2. Create and Configure <code>docker-compose.yml</code></h3>
    <p>Create a <code>docker-compose.yml</code> file in your project directory and configure your services. Customize the ports if desired. In this example, port <code>1000</code> is used.</p>

    <h3>3. Deploy the Stack</h3>
    <pre><code>docker-compose up -d</code></pre>

    <h3>4. Access Mattermost</h3>
    <p>Open your browser and visit:</p>
    <pre><code>http://your-ip-address:1000</code></pre>
    <p>Replace <code>your-ip-address</code> with your server's IP address.</p>

    <h2>🗝️ PostgreSQL Credentials</h2>
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>Username</th>
            <th>Password</th>
        </tr>
        <tr>
            <td>PentabitLabs</td>
            <td>ConsoliAds786</td>
        </tr>
    </table>

    <hr>

    <h2>💾 Automating Backups for Mattermost Data and PostgreSQL</h2>

    <h3>1. Create a Backup Script</h3>
    <p>Prepare a backup script to automate your backups (PostgreSQL and Mattermost volumes).</p>

    <h3>2. Make the Script Executable</h3>
    <p>Ensure your backup script has executable permissions.</p>

    <h3>3. Test the Script</h3>
    <p>Run your backup script to manually create a backup.</p>

    <h3>4. Automate Daily Backups with Cron</h3>
    <p>Schedule the backup script to run daily at 2 AM using <code>cron</code>.</p>

    <h3>5. View Backup Logs</h3>
    <p>Check the backup logs to verify successful execution.</p>

    <hr>

    <h2>🎯 Final Tips</h2>
    <ul>
        <li>Ensure Docker and Docker Compose are installed on your system.</li>
        <li>Replace ports and credentials as per your preference.</li>
        <li>Ensure your backup directory has the necessary permissions.</li>
    </ul>

    <h2>📂 Repository Usage</h2>
    <p>This README is intended to be placed in your Git repository alongside your Mattermost Docker setup and backup automation scripts. Feel free to clone, modify, and extend as needed.</p>

    <p>Enjoy your secure and automated Mattermost setup! 🚀</p>
</body>
</html>