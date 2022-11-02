if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SuhasJs07/inline-searching-bot.git /inline-searching-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /inline-searching-bot
fi
cd /inline-searching-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
