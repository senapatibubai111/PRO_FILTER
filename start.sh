if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/senapatibubai111/PRO_FILTER.git /PRO_FILTER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PRO_FILTER
fi
cd /PRO_FILTER
pip3 install -U -r requirements.txt
echo "Starting PRO_FILTER...."
python3 bot.py
