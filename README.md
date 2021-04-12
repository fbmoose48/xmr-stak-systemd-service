# xmr-stak-systemd-service
Automated script run at boot manged by systemd

`git clone https://github.com/fbmoose48/xmr-stak-systemd-service.git`

`cd xmr-stak-systemd-service`

1. Create "./start-service.sh" in /opt/xmr-stak/build/bin or other appropriate directory

sudo cp ./start-service.sh /opt/xmr-stak/build/bin

2. Create "/etc/systemd/system/xmr-stak.service"

sudo cp ./xmr-stak.service /etc/systemd/system/

3. Provide necessary permissions to "start-service.sh"

sudo chmod 755 /opt/xmr-stak/build/bin/start-service.sh

4. Make "start-service.sh" executable

sudo chmod +x /opt/xmr-stak/build/bin/start-service.sh

5. Enable service

sudo systemctl enable xmr-stak.service

6. Start service

sudo systemctl start xmr-stak.service

7. Confirm service status

sudo systemctl status xmr-stak.service


If the unit file, source configuration file or drop-ins of xmr-stak.service changed on disk. Run 'systemctl daemon-reload' to reload units prior to service restart:

sudo systemctl daemon-reload
sudo systemctl restart xmr-stak.service


To disable autorun at boot:

sudo systemctl disable xmr-stak.service
