#       _                  _      _
#      | |                | |    (_)
#      | |   ___   _ __   | | __  _   _ __    ___
#  _   | |  / _ \ | '_ \  | |/ / | | | '_ \  / __|
# | |__| | |  __/ | | | | |   <  | | | | | | \__ \
#  \____/   \___| |_| |_| |_|\_\ |_| |_| |_| |___/
#
# Jenkins docker image with docker embedded binary

FROM jenkins/jenkins:lts
MAINTAINER Adam K Dean <adamkdean@googlemail.com>

USER root
RUN curl -sSL https://get.docker.com | sh
