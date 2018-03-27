# A Dumping Group for random ruby things

## Chef

Some scripts that actually have some real world application.

### knife_search_csv.rb

Uses the `knife search` command to generate a csv file of the results.  Needs the following options set to work:

`-i, --index` - what you want to search against, can be either `client`, `environment`, `node`, `role`, or name of a data bag

`-s, --search_query` - what you're searching for, example: node name that includes the word "production" would be `-s name:*production*`

`-a, --attribute` - attribute you want results from, example: "ec2 public hostnames" would be `a ec2.public_hostnames` (can return results from any attributes that are set by ohai - check an ohai run on a node to see what attributes are available to you to return results for and the syntax needed to get them.)

EXAMPLE: `ruby knife_search_csv.rb -i node -s name:*prod* -a ec2.public_hostname` is equivalent to the knife search command of `knife search node "name:*prod*" -a ec2.public_hostname`

Results of script will generate a csv on your Desktop called "knife-search-node-ec2.public_hostname.csv".

### knife_ssh_csv.rb

Uses the `knife ssh` command to generate a csv file of the results.  Needs the following options set to work:

`-n, --name` - name of the nodes that you want to run the knife ssh command against (can use wildcards like *)

`-c, --command` - command that you want run on the node names specified from --name option above

`-a, --attribute` - attribute you want returned along with the output of the knife ssh command that you ran

EXAMPLE: `ruby knife_ssh_csv.rb -n "name:artifactory-*" -c "chef-client -v" -a fqdn` is equivalent to `knife ssh "name:artifactory-*" "chef-client -v" -a fqdn`

Results of the script will generate a csv on your Desktop called "knife-ssh-artifactory-*-chef-client -v.csv"
