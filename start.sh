if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kuchh-Bhi/ho /ho
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ho
fi
cd /ho
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
