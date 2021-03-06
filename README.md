# wp-cli.setup.sh

## What's this?

"wp-cli.setup.sh" is a shell script to install [WP-CLI](http://wp-cli.org/) into common hosting servers.

* Related website  
[WP-CLI Advent Calendar 2014](http://www.adventar.org/calendars/505)

## Requires

A hosting server that SSH access is allowed.

## Installation and usage

1. Connect to hosting server via SSH
2. Run ``wget --no-check-certificate https://raw.githubusercontent.com/tecking/wp-cli.setup.sh/master/wp-cli.setup.sh``  
(you can download the script)
3. Run ``chmod +x wp-cli.setup.sh``
4. Run ``./wp-cli.setup.sh``
5. Following the message, run ``source ~/.cshrc`` or ``source ~/.bash_profile``

## Notice

* Please use At Your Own Risk
* Tested environment (hosting servers)
  * [SAKURA Rental Server](https://www.sakura.ne.jp/) (Japan)
  * [Heteml](https://heteml.jp/) (Japan)
  * [Lolipop](https://lolipop.jp/) (Japan)
  * [X SERVER](https://www.xserver.ne.jp/) (Japan)
  * [ConoHa WING](https://www.conoha.jp/wing/) (Japan)
* WP-CLI (wp-cli.phar) is downloaded in ~/usr/local/bin directory
* Tab completions file for bash (wp-completion.bash) is downloaded in ~/ directory
* Once WP-CLI is installed, you can delete the script
* The script is usable under the following environment, maybe
  * "sh" is available (you can check with ``which sh`` command)
  * "wget" is available (the script checks wget is usable or not)
  * Login shell is "bash" or "csh"

## Changelog

* 0.3.0 (2014-12-05)
  * Check existence for wget command
* 0.2 (2014-11-30)
  * Opening to the public

## License

[MIT License](http://opensource.org/licenses/mit-license.php)
