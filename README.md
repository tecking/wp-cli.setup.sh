# wp-cli.setup.sh

## What's this?

"wp-cli.setup.sh" is a shell script to install [WP-CLI](http://wp-cli.org/) into common hosting servers.

* Related website  
[WP-CLI Advent Calendar 2014](http://www.adventar.org/calendars/505) (sorry, only Japanese)

## Requires

A hosting server that SSH access is allowed.

## Installation and usage

1. Connect to hosting server via SSH
2. Execute ``wget --no-check-certificate https://raw.githubusercontent.com/tecking/wp-cli.setup.sh/master/wp-cli.setup.sh``  
(you can download the script)
3. Execute ``chmod +x wp-cli.setup.sh``
4. Execute ``./wp-cli.setup.sh``
5. Following the message, execute ``source ~/.cshrc`` or ``source ~/.bash_profile``

## Notice

* Please use At Your Own Risk
* Tested environment (hosting servers)
 * [SAKURA Rental Server](http://www.sakura.ne.jp/) (Japan)
 * [Heteml](http://heteml.jp) (Japan)
* WP-CLI (wp-cli.phar) is downloaded in ~/usr/local/bin directory
* Tab completions file for bash (wp-completion.bash) is downloaded in ~/ directory
* Once WP-CLI is installed, you can delete the script
* The script is usable under the following environment, maybe
 * "sh" is available (you can check with ``which sh`` command)
 * "wget" is available (the script checkes wget is usable or not)
 * Login shell is "bash" or "csh"

## Changelog

* 0.3.0 (2014-12-05)
 * Check existence for wget command
* 0.2 (2014-11-30)
 * Opening to the public

## License

[MIT License](http://opensource.org/licenses/mit-license.php)