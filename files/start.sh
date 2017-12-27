#!/bin/bash


#=======================================
#      SPRING BOOT CONFIGURATION
#=======================================

# The port to use
readonly PORT=80

readonly HOST=difido_difido

# Log levels: TRACE, DEBUG, INFO, WARN, ERROR
readonly LOGGING_LEVEL=DEBUG



#=========================================
#      DEBUG                          
#=========================================

DEBUG=""
# Remove the remark from the following line if you want to remote debug the server
#DEBUG="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=n"


#=========================================
#     LAUNCH
#=========================================

# Set the working directory to the parent folder of the script
cd "$(dirname "$0")"/..

# Launching the server
java $DEBUG -Xms256m -Xmx1024m -Dserver.address=$HOST -Dserver.port=$PORT -Dlogging.level.org.springframework.web=ERROR -Dlogging.level.il.co.topq.report=$LOGGING_LEVEL -cp "lib/difido-server.jar:plugin/*" org.springframework.boot.loader.JarLauncher



