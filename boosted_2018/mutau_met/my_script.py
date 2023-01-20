import argparse
parser = argparse.ArgumentParser()
parser.add_argument('inputfile', help='Specify an input file', type=str)
parser.add_argument('outputfile', help='Specify an output file', type=str)
args = parser.parse_args()

f_in = open(args.inputfile, 'r')
f_out = open(args.outputfile, 'w+')
f_out.write( ''.join( reversed(f_in.read()) ) )

