# xmr-stak-systemd-service
Automated script run at boot manged by systemd

1. Create "./start-service.sh" in /opt/xmr-stak-1.0.5/build/bin or other appropriate directory

cp ./start-service.sh /opt/xmr-stak-1.0.5/build/bin

2. Create "/etc/systemd/system/xmr-stak.service"

cp ./xmr-stak.service /etc/systemd/system/

3. Provide necessary permissions to "start-service.sh"

sudo chmod 755 /opt/xmr-stak-1.0.5/build/bin/start-service.sh

4. Make "start-service.sh" executable

sudo chmod +x /opt/xmr-stak1.0.5/build/bin/start-service.sh

5. Enable service

sudo systemctl enable xmr-stak.service

6. Start service

sudo systemctl start xmr-stak.service

7. Confirm service status

sudo systemctl status xmr-stak.service


To disable autorun at boot:

sudo systemctl disable xmr-stak.service
