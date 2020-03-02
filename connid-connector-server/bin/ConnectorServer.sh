#
# ====================
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
#
# Copyright 2015 ConnId. All rights reserved.
#
# The contents of this file are subject to the terms of the Common Development
# and Distribution License("CDDL") (the "License").  You may not use this file
# except in compliance with the License.
#
# You can obtain a copy of the License at
# http://opensource.org/licenses/cddl1.php
# See the License for the specific language governing permissions and limitations
# under the License.
#
# When distributing the Covered Code, include this CDDL Header Notice in each file
# and include the License file at http://opensource.org/licenses/cddl1.php.
# If applicable, add the following below this CDDL Header, with the fields
# enclosed by brackets [] replaced by your own identifying information:
# "Portions Copyrighted [year] [name of copyright owner]"
# ====================
#

CLASSPATH=lib/framework/connector-framework.jar:\
lib/framework/connector-framework-internal.jar:\
lib/framework/groovy-all.jar:\
lib/framework/slf4j-api.jar:\
lib/framework/slf4j-logging.jar:\
lib/framework/logback-core.jar:\
lib/framework/logback-classic.jar\
lib/jackson-core-2.9.8.jar\
lib/jackson-databind-2.9.8\
lib/jackson-annotations-2.9.8.jar

# if you want to use winrm
java -Xmx500m -Djava.util.logging.config.file=conf/logging.properties -classpath "$CLASSPATH" \
 org.identityconnectors.framework.server.Main "$@"  

# Debug + console log
# java -Xmx500m -Xdebug -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n -Dlogback.configurationFile=lib/logback.xml -Djava.util.logging.config.file=conf/logging.properties -classpath "$CLASSPATH" \
# org.identityconnectors.framework.server.Main "$@"

# If you need to use AD over https
#java -Xmx500m -Djava.util.logging.config.file=conf/logging.properties -Djavax.net.ssl.keyStore=/opt/czechidm/etc/truststore.jks -Djavax.net.ssl.keyStorePassword=KEEPASS -Djavax.net.ssl.keyStoreType=JKS \
#-Djavax.net.ssl.trustStore=/opt/czechidm/etc/truststore.jks -Djavax.net.ssl.trustStorePassword=KEEPASS -classpath "$CLASSPATH" \
# org.identityconnectors.framework.server.Main "$@"

# Debug + console log
# java -Xmx500m -Xdebug -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n -Dlogback.configurationFile=lib/logback.xml -Djava.util.logging.config.file=conf/logging.properties \
# -Djavax.net.ssl.keyStore=/opt/czechidm/etc/truststore.jks -Djavax.net.ssl.keyStorePassword=KEEPASS -Djavax.net.ssl.keyStoreType=JKS \
# -Djavax.net.ssl.trustStore=/opt/czechidm/etc/truststore.jks -Djavax.net.ssl.trustStorePassword=KEEPASS -classpath "$CLASSPATH" \
# org.identityconnectors.framework.server.Main "$@"

