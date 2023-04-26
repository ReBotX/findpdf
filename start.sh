if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pdf4u/old.git /render
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /render
fi
cd /old
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
