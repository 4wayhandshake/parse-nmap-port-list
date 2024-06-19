# parse-nmap-port-list
Takes a comma-separated list of ports (or port ranges) and prints out each unique port to stdout.
I made this for parsing the `nmap-ports-top1000.txt` from [Seclists](https://github.com/danielmiessler/SecLists/blob/master/Discovery/Infrastructure/nmap-ports-top1000.txt)

## Description

Transform a list in a format like this:

```
17,19-22,30,32-33
```

into a more machine-friendly format:

```
17
19
20
21
22
30
31
32
33
```

## Usage

```bash
chmod u+x ./parse_nmap_ports.sh
./parse_nmap_ports.sh /usr/share/seclists/Discovery/Infrastructure/nmap-ports-top1000.txt | sort -n > ports.txt
```
