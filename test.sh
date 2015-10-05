# - Test set of slacktee.sh -

# Test settings
BEARYCHAT="./bearychat.sh"
DATA="./test_data.txt"
CHANNEL="sandbox"

echo "This test posts many messages to your Slack channel?"
read -p "Are you sure to execute this test? [y/n] :" choice
case "$choice" in
    y|Y ) ;;
    * ) exit 0;; # Abort
esac

# Test 1: Setup
echo "-- Setup mode --"
$BEARYCHAT '--setup'

# # Test 2: Buffering
# echo "-- Buffering (default) --"
# cat $DATA | $BEARYCHAT
#
# # Test 3: No-buffering
# echo "-- Non buffering (-n/--no-buffering) --"
# cat $DATA | $BEARYCHAT '-n'
# echo "-- Non buffering (--no-buffering) --"
# cat $DATA | $BEARYCHAT '--no-buffering'
#
# # Test 4: File upload
# echo "-- File upload (-f) --"
# cat $DATA | $BEARYCHAT '-f'
# echo "-- File upload (--file) --"
# cat $DATA | $BEARYCHAT '--file'
#
# # Test 5: Title
# echo "-- Title (-t) --"
# cat $DATA | $BEARYCHAT '-t' 'TitleTest'
# echo "-- Title (--title) --"
# cat $DATA | $BEARYCHAT '--title' 'TitleTest'
# echo "-- Title with non buffering (-t and -n)"
# cat $DATA | $BEARYCHAT '-t' 'TitleTest - Non Buffering' '-n'
# echo "-- Title with file (-t and -f)"
# cat $DATA | $BEARYCHAT '-t' 'TitleTest - File' '-f'
#
# # Test 6: Link
# echo "-- Link (-l) --"
# echo "Link (-l): Link should be used as a title" | $BEARYCHAT '-l' 'https://www.google.com/'
# echo "-- Link (--link) --"
# echo "Link (--link): Link should be used as a title" | $BEARYCHAT '--link' 'https://www.google.com/'
# echo "-- Link with title (-t and -l) --"
# echo "Link (-t and -l): Title should have a link to Google" | $BEARYCHAT '-t' 'Google' '-l' 'https://www.google.com/'
#
# # Test 7: Channel
# echo "-- Channel (-c) --"
# echo "Channel (-c): Post to $CHANNEL" | $BEARYCHAT '-c' $CHANNEL
# echo "-- Channel (--channel) --"
# echo "Channel (--channel): Post to $CHANNEL" | $BEARYCHAT '--channel' $CHANNEL
# echo "-- Channel (-c) with # --"
# echo "Channel (-c): Post to $CHANNEL with #" | $BEARYCHAT '-c' "#"$CHANNEL
# echo "-- Channel (-c) with @ (Shouldn't happen anything) --"
# echo "Channel (-c): Post to @slackbot" | $BEARYCHAT '-c' "@slackbot"
#
# # Test 8: Username
# echo "-- Username (-u) --"
# echo "Username (-u): Username Test" | $BEARYCHAT '-u' 'Username Test'
# echo "-- Username (--username) --"
# echo "Username (--username): Username Test2" | $BEARYCHAT '--username' 'Username Test2 ' # We need to change the username to show username
#
# # Test 9: Icon
# echo "-- Icon (-i) --"
# echo "Icon test: bell" | $BEARYCHAT '-i' 'bell' '-u' 'Icon Test 1' # We need to change the username to show icon
# echo "-- Icon (--icon) --"
# echo "Icon test: grin" | $BEARYCHAT '--icon' 'grin' '-u' 'Icon Test 2'
#
# # Test 10: Message formatting
# echo "-- Message formatting (-m) with link_names --"
# echo "Message formatting: Link names \@channel, \#channel, https://www.google.com/" | $BEARYCHAT '-m' 'link_names'
# echo "-- Message formatting (--message-formatting) with full --"
# echo "Message formatting: Full \@channel, \#$CHANNEL, https://www.google.com/" | $BEARYCHAT '-m' 'full'
# echo "-- Message formatting (-m) with none --"
# echo "Message formatting: None \@channel, \#CHANNEL, https://www.google.com/" | $BEARYCHAT '-m' 'none'
#
# # Test 11: Plain text
# echo "-- Plain text (-p) --"
# echo "Plain text (-p)" | $BEARYCHAT '-p'
# echo "-- Plain text (--plain-text) --"
# echo "Plain text (--plain-text)" | $BEARYCHAT '--plain-text'
#
# # Test 12: Attachment
# echo "-- Attachment (-a) with no color --"
# echo "Attachment: No color specified" | $BEARYCHAT '-a'
# echo "-- Attachment (--attachment) with 'good' --"
# echo "Attachment: Good" | $BEARYCHAT '-a' 'good'
# echo "-- Attachment (--attachment) with color code --"
# echo "Attachment: \#FF0099" | $BEARYCHAT '-a' '#FF0099'
#
# # Test 13: Attachment with fields
# echo "-- Attachment (-a) with long fiels (-e/--field) --"
# echo "Attachment: Two fields" | $BEARYCHAT '-a' '-e' 'Field 1 (-e)' 'Field 1 Value' '--field' 'Field 2 (--field)' 'Field 2 Value'
# echo "-- Attachment (-a) with short fiels (-s/--short-field) --"
# echo "Attachment: Two short fields" | $BEARYCHAT '-a' '-s' 'Short field 1 (-s)' 'Field 1 Value' '--short-field' 'Short field 2 (--short-field)' 'Field 2 Value'
# echo "-- Attachment (-a) with long and short fields (-e/-s) --"
# echo "Attachment: Long and short fields" | $BEARYCHAT '-a' '-e' 'Long Field (-e)' 'Long field Value' '-s' 'Short field 1 (-s)' 'Short field 1 Value' '-s' 'Short field 2 (-s)' 'Short field 2 Value'
# echo "Attachment with file" | $BEARYCHAT '-a' '-f' '-e' 'Long Field (-e)' 'Long field Value' '-s' 'Short field 1 (-s)' 'Short field 1 Value' '-s' 'Short field 2 (-s)' 'Short field 2 Value'
#
# echo "Test is done!"
