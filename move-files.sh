# check parameters
if [ -z "$1" ]; then
  echo "Please specify a valid IXE username with access to the Shiny server"
  exit 1
fi

# Set the user value from the input value (just for convenience and ease of reading the code)
user="$1"

# scp the files to the shiny server - should be the HTML files and supporting _files, _cache and www directories
scp -r *.html *_files *_cache www/ ${user}@ukixeapp208.uk.kworld.kpmg.com:/srv/shiny-server/r-training
