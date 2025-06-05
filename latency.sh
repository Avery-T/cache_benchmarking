#set -x

work=./latency
buffer_size=1
stride=64
#taskset -c 0 nice -n -20 ./your_program
for i in `seq 1 15`; do
    taskset -ac 0 nice -n -20 $work -b $buffer_size -s $stride
    buffer_size=$(($buffer_size*2))
done
