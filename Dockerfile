#FROM centos:7
#FROM dockerregistry.dev.power.ge.com/pwr-it/centos7
FROM automation-tools-eu1p.dev.power.ge.com/pwr-it/centos7
MAINTAINER GE Power
RUN echo hello > /tmp/success
