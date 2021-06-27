Включение сервиса в systemd:
	Проверка работоспособности:
	systemctl daemon-reload
	systemctl start network-reconnect.service
	
	Включение в автозагрузку:
	systemctl enable network-reconnect.service