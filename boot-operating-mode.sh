#!/bin/bash

systemctl set-default multiuser.target
systemctl isolate emergency.target
systemctl isolate rescue.target

