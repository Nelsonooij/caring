if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Nelsonooij/caring.git /caring
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /caring
fi
cd /caring
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
