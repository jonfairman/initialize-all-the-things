#! /usr/bin/env python

import subprocess

def is_wifi_enabled(info):
    if "AirPort" in info:
        return(False)
    else:
        return(True)
# broken
def is_wifi_connected(info):
    if "state" in info:
        if info["state"] == "running":
            return(True)
        else:
            return(False)
    else:
        return(False)

def signal_percent(rate, maxRate):
    return((float( int(rate) ) / float( int(maxRate))  * 100.0))

def get_signal_percent(info):
    lastRate = info["lastTxRate"]
    maxRate  = info["maxRate"]
    return(signal_percent(lastRate,maxRate))

def tmux_output(info):
    output = "#[fg=green][" + info["SSID"].strip() + ":" + str(int(get_signal_percent(info))) + "%:" + info["maxRate"] + "]#[default]"
    print(output)

# Return a dict of the output from airport --getinfo
def get_info():
    airport = "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
    output = subprocess.check_output([airport, "--getinfo"],universal_newlines=True)
    lines = output.split("\n")

    airinfo = {}
    for l in lines:
        fields = l.strip().split(':')
        if fields[0] != '':
            airinfo[fields[0]] = str(fields[-1]).strip()
    return(airinfo)

def main():
    info = get_info()
    if is_wifi_enabled(info):
        tmux_output(info)

main()
