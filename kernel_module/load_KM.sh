
/sbin/insmod /home/team7/cma_test/cma_test.ko

if [ $? != 0 ]; then
    printf "$0: *** Error: insmod failed\n"
    exit 1
fi

echo 13000 > /dev/cma_test
