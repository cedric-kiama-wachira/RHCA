#!/bin/bash

if test -f /tmp/archive.tar.gz; then 
    sudo mv /tmp/archive.tar.gz /tmp/archive.tar.gz.OLD;
    sudo tar acf /tmp/archive.tar.gz /etc/dnf/;
else
    sudo tar acf /tmp/archive.tar.gz  /etc/dnf/;
fi