from os import system
import argparse

parser = argparse.ArgumentParser(description='using bash standard networking ping command')
parser.add_argument("--url", help="url of target")
parser.add_argument("--findip", help="find target ip")
parser.add_argument("--ping", help="ping target")
parser.add_argument("--flood", help="dos testing with ping flood switch")
parser.add_argument("--spec", help="specify data size of ICMP packets")
args = parser.parse_args()

out = '~/tools/dedxcanner/outputs/ping_output.txt'

def find_ip():
  cmd = f'ping -c 1 {args.url} | grep -e "from" | cut -d " " -f 4 | cut -d ":" -f 1 > ~/tools/dedxcanner/outputs/target_ip.out'
  print('[!] finding target ip with ping')
  system(cmd)

if args.findip:
  find_ip()

if args.ping:
  cmd = f"ping -c 5 {args.url} > ./test"
  print('[!] sending 5 ping packets')
  system(cmd)

  print('[!] sending ping with interval of 3')
  cmd = f"ping -i 3 {args.url} -c 5 > ./test"
  system(cmd)

if args.flood and args.url:
  cmd = f"ping -i 3 {args.url} -c 5 > ./test"
  print('[!] flooding target with simple ping -a switch')
  system(cmd)

if args.spec and args.url:
  cmd = f"ping -s {args.spec} {args.url}" 
  print(f'[!] sending ICMP with specific data size of: {args.spec}')
  system(cmd)

