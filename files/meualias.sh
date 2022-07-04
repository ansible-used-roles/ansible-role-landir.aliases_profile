# alias
alias config='/usr/bin/git --git-dir=$HOME/.meucfg --work-tree=$HOME'
alias dockerip='docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" '
alias pythonserver='python3 -m http.server'
alias ci="mvn -Dmaven.test.skip=true -DskipTests -Plocal clean verify"
alias sr="mvn spring-boot:run"
alias dockerrm="docker-compose down --remove-orphans --volumes"
alias cobertura="mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent install -Dmaven.test.failure.ignore=true && mvn org.jacoco:jacoco-maven-plugin:report test"

# exports
export GIT_PAGER="cut -c 1-${COLUMNS-80}"
export GIT_LOG_PARAM=" --no-pager log --decorate=short --pretty=oneline -n10"
export M2_HOME=$MAVEN_HOME
export DOTNET_CLI_TELEMETRY_OPTOUT=1



# java, ant e maven
#export SDKMAN_DIR="$HOME/.sdkman"
#
#if [ -f $SDKMAN_DIR/bin/sdkman-init.sh ]; then
#  . $SDKMAN_DIR/bin/sdkman-init.sh
#  export M2=$MAVEN_HOME/bin
#  export MAVEN_OPTS="-Xmx1024m -Xms521m"
#  alias mvn='mvn -Dmem512'
#fi
