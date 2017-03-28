# wait a bit to make sure the Docker extension folder exists
sleep 10

# find the Docker folder (if you have auto-upgrade-minor-version set to false, this can be hard-coded)
status_file_path=/var/lib/waagent/$(ls /var/lib/waagent | grep Microsoft.Azure.Extensions.Docker | grep -v xml)/status/0.status

# wait until docker extension is finished
while [ 1 == 1 ]
do
	if grep -q "success" $status_file_path; then
		break
	else
		sleep 5
		echo "waiting"
	fi
done

# be awesome
echo 'docker finished; do cool stuff here'
