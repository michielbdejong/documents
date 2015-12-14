#!/bin/bash -eux

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

tmp_warrant=/tmp/`date +"%Y-%m-%d"`.warrant

date +"%Y-%m-%d" > $tmp_warrant
echo "No warrants have ever been served to me, Pierre Ozoux." >> $tmp_warrant
echo "No searches or seizures of any kind have ever been performed on my assets." >> $tmp_warrant

read  -p "Enter press article to prove date: " article

echo $article >> $tmp_warrant

gpg --output ${tmp_warrant}.sig --clearsign ${tmp_warrant}

cat $SCRIPTPATH/warrant_header ${tmp_warrant}.sig $SCRIPTPATH/warrant_footer > $SCRIPTPATH/`date +"%Y-%m-%d"`

