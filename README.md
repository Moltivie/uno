# UNO Bot

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](./LICENSE)

Telegram Bot that allows you to play the popular card game UNO via inline queries. The bot currently runs as [@unobot](http://telegram.me/unobot).

To run the bot yourself, you will need:

- Python (tested with 3.4+)
- The [python-telegram-bot](https://github.com/python-telegram-bot/python-telegram-bot) module
- [Pony ORM](https://ponyorm.com/)

## Setup

- Get a bot token from [@BotFather](http://telegram.me/BotFather) and create a `.env` file based on the `.env.example` template.
- Convert all language files from `.po` files to `.mo` by executing the bash script `compile.sh` located in the `locales` folder.
  Another option is: `find . -maxdepth 2 -type d -name 'LC_MESSAGES' -exec bash -c 'msgfmt {}/unobot.po -o {}/unobot.mo' \;`.
- Use `/setinline` and `/setinlinefeedback` with BotFather for your bot.
- Use `/setcommands` and submit the list of commands in commandlist.txt
- Install requirements (using a `virtualenv` is recommended): `pip install -r requirements.txt`

You can change gameplay parameters like turn times, minimum amount of players and default gamemode in your `.env` file.
Current gamemodes available: classic, fast and wild. Check the details with the `/modes` command.

Then run the bot with `python3 bot.py`.

Code documentation is minimal but there.

## Development Notes

- When using Pony ORM, entity models must be imported before `db.generate_mapping()` is called
- Environment variables can be set in a `.env` file (see `.env.example` for template)
- For deployment without translation files, set `ENABLE_TRANSLATIONS=false`
