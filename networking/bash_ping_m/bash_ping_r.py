import os
import argparse

parser = argparse.ArgumentParser(description='using bash standard networking ping command')

parser.add_argument("--url", help="url of target")


args = parser.parse_args()

out = '/home/xchewmer/tools/dedxcanner/outputs/ping_output.txt'
print(args.url)
cmd = f"ping {args.url} > ./test"

os.system(cmd)