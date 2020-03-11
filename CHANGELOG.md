2020-03-11  Petr Fišer <petr.fiser@bcvsolutions.eu>
* Moved daemon properties from ConnectorServer.sh into systemd unit.
* Added template for systemd unit.
* (No changes to the windows connector server.)

2019-10-17	Petr Fišer <petr.fiser@bcvsolutions.eu>
* Modified default connserver property file to include address bind.
* file: connid-connector-server/conf/connectorserver.properties

2019-10-10	Luděk Urban <ludek.urban@bcvsolutions.eu>
* Modified service creation on Windows to add a truststore.
* file: connid-connector-server/bin/ConnectorServer.bat
