#!/bin/bash

INTERFACE="eth0"
RANDOM_MAC="00:$(printf '%02X' $((RANDOM%256))):$(printf '%02X' $((RANDOM%256))):$(printf '%02X' $((RANDOM%256))):$(printf '%02X' $((RANDOM%256))):$(printf '%02X' $((RANDOM%256))):$(printf '%02X' $((RANDOM%256)))"

ip link set dev $INTERFACE down
ip link set dev $INTERFACE address $RANDOM_MAC
ip link set dev $INTERFACE up
