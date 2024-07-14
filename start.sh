if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Findpdfbot/FindpdfV2.git /FindpdfV2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FindpdfV2
fi
cd /HerokuPDF4U
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
