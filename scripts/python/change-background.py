# from dotenv import load_dotenv
import os
import argparse


# main
def main():
  # read args
  parser = argparse.ArgumentParser()
  default_filepath = os.getenv('DEFAULT_FILEPATH')
  parser.add_argument('filepath', help='filename of the image', type=str, default=default_filepath)
  args = parser.parse_args()
  # cp image to filepath
  os.system('cp ' + args.filepath + ' ' + default_filepath)
  # change background with feh
  os.system('feh --bg-scale ' + default_filepath)
  # everything is ok
  print('Background changed to ' + args.filepath)
  return 0


# init
if __name__ == '__main__':
  # load env variables
  # load_dotenv()
  # run main
  main()
