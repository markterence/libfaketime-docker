
# set date normal way -> date -s "$(date +'2013%m%d %H:%M')"
echo $(date)

# ganito format -> FAKETIME="2020-12-24 20:30:00"

LD_PRELOAD=/faketime/libfaketime.so.1
FAKETIME_NO_CACHE=1
export FAKETIME="$(date +'2013-%m-%d %H:%M:%S')"

echo $(date)
echo "$FAKETIME"
