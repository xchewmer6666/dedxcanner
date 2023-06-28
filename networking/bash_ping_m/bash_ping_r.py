from os import system
import argparse

parser = argparse.ArgumentParser(description='using bash standard networking ping command')

parser.add_argument("--url", help="url of target")


args = parser.parse_args()

out = '/home/xchewmer/tools/dedxcanner/outputs/ping_output.txt'
print(args.url)

cmd = f"ping -c 5 {args.url} > ./test"
system(cmd)

print('[!] sending ping with interval of 3')
cmd = f"ping -i 3 {args.url} -c 5 > ./test"
system(cmd)

if args.flood:
  cmd = f"ping -i 3 {args.url} -c 5 > ./test"
  print('[!] flooding target with simple ping -a switch')
  system(cmd)
    

