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
# Modified BCV solutions. See CHANGELOG.md.

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

JAVA_OPTS="$JAVA_OPTS -Djava.util.logging.config.file=conf/logging.properties"

# if you want to use winrm
java $JAVA_OPTS -classpath "$CLASSPATH" \
  org.identityconnectors.framework.server.Main "$@" -properties conf/connectorserver.properties
