#!/bin/bash
# Flight Booking System - Run Script
export CATALINA_HOME=/tmp/apache-tomcat-9.0.117

# Recompile classes
echo "Compiling Java sources..."
javac -source 11 -target 11 -cp "build/web/WEB-INF/lib/*" -d build/web/WEB-INF/classes $(find . -path ./build -prune -o -path ./nbproject -prune -o -name "*.java" -print)

# Stop if already running
$CATALINA_HOME/bin/shutdown.sh 2>/dev/null
sleep 2

# Clean and deploy
rm -rf $CATALINA_HOME/webapps/ROOT $CATALINA_HOME/work/Catalina/localhost/*
cp -r build/web $CATALINA_HOME/webapps/ROOT

# Start Tomcat
echo "Starting Tomcat 9 on http://localhost:8080/"
$CATALINA_HOME/bin/startup.sh

# Wait and check
sleep 8
echo ""
echo "Home page: $(curl -s -o /dev/null -w '%{http_code}' http://localhost:8080/)"
echo "Login page: $(curl -s -o /dev/null -w '%{http_code}' http://localhost:8080/Login)"
echo ""
echo "Application is running at: http://localhost:8080/"
