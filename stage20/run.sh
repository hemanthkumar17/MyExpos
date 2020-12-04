#!/bin/bash
FOLDER_NAME="stage20"
ASSIGNMENT="2"
cd ..
# Compile expl
cd ./expl

echo Idle Program Code Compiling....
./expl "../$FOLDER_NAME/expl_files/idleprogram.expl"; # checked

echo Shell-Init Program Code Compiling....
./expl "../$FOLDER_NAME/expl_files/Assg$ASSIGNMENT/shell.expl"; # checked

# echo Prime Program Code Compiling....
# ./expl "../$FOLDER_NAME/expl_files/prime.expl"
# ./expl "../$FOLDER_NAME/testpg3.expl"; # checked
# ./expl "../$FOLDER_NAME/testpg4.expl"; # checked
# ./expl "../$FOLDER_NAME/child.expl"; # checked
# ./expl "../$FOLDER_NAME/parent.expl"; # checked

echo Odd Program Code Compiling....
./expl "../$FOLDER_NAME/expl_files/Assg$ASSIGNMENT/odd.expl"; # checked

echo Even Program Code Compiling....
./expl "../$FOLDER_NAME/expl_files/Assg$ASSIGNMENT/even.expl"; # checked

# echo Linked List Program Code Compiling....

# ./expl "../$FOLDER_NAME/expl_files/linklist.expl"; # checked
# ./expl "../$FOLDER_NAME/mergep.expl"; # checked
# ./expl "../$FOLDER_NAME/merges.expl"; # checked
# ./expl "../$FOLDER_NAME/cfile.expl"; # checked
# ./expl "../$FOLDER_NAME/dfile.expl"; # checked
# compile SPL
cd ../spl

echo OS Code Compiling....
./spl "../$FOLDER_NAME/spl_files/os.spl"; #checked

echo Console Interrupt Routine Compiling....
./spl "../$FOLDER_NAME/spl_files/console_interrupt.spl"; #checked

echo Timer Interrupt Code Compiling....
./spl "../$FOLDER_NAME/spl_files/timer_interrupt.spl"; #checked

echo Disk Interrupt Routine Compiling....
./spl "../$FOLDER_NAME/spl_files/disk_interrupt.spl"; #checked
# ./spl "../$FOLDER_NAME/int4.spl"; # checked

echo INT6 Code Compiling....
./spl "../$FOLDER_NAME/spl_files/int6.spl"; # checked

echo INT7 Code Compiling....
./spl "../$FOLDER_NAME/spl_files/int7.spl"; #checked

echo INT8 Code Compiling....
./spl "../$FOLDER_NAME/spl_files/int8_fork.spl"

echo INT9 Code Compiling....
./spl "../$FOLDER_NAME/spl_files/int9_exec.spl"; #checked

echo INT10 Code Compiling....
./spl "../$FOLDER_NAME/spl_files/int10_exit.spl"; #checked

# ./spl "../$FOLDER_NAME/int11.spl"; #checked
# ./spl "../$FOLDER_NAME/int13.spl"; #checked
# ./spl "../$FOLDER_NAME/int14.spl"; #checked
# ./spl "../$FOLDER_NAME/int15.spl"; #checked

echo Resource Manager Module Code Compiling....
./spl "../$FOLDER_NAME/spl_files/module0_resource_manager.spl"; #checked

echo Process Manager Module Code Compiling....
./spl "../$FOLDER_NAME/spl_files/module1_process_manager.spl"; #checked

echo Memory Manager Module Code Compiling....
./spl "../$FOLDER_NAME/spl_files/module2_memory_manager.spl"; #checked

echo Device Manager Module Code Compiling....
./spl "../$FOLDER_NAME/spl_files/module4_device_manager.spl"; #checked

echo Scheduler Module Code Compiling....
./spl "../$FOLDER_NAME/spl_files/module5_scheduler.spl"; #checked

echo Boot Module Code Compiling....
./spl "../$FOLDER_NAME/spl_files/module7_boot_module.spl"; #checked

echo Exception Handler Module Code Compiling....
./spl "../$FOLDER_NAME/spl_files/exception_handler.spl"; #checked

cd ../xfs-interface
# reset the disk
./xfs-interface fdisk
# load library
echo Loading Modules....
./xfs-interface load --library "../expl/library.lib"
# load OS
./xfs-interface load --os "../$FOLDER_NAME/spl_files/os.xsm"
# load console interrupt
./xfs-interface load --int=console "../$FOLDER_NAME/spl_files/console_interrupt.xsm"
# load timer interrupt
./xfs-interface load --int=timer "../$FOLDER_NAME/spl_files/timer_interrupt.xsm"
# load the disk interrupt
./xfs-interface load --int=disk "../$FOLDER_NAME/spl_files/disk_interrupt.xsm"
# # exception handler
./xfs-interface load --exhandler "../$FOLDER_NAME/spl_files/exception_handler.xsm"
# idle program
./xfs-interface load --idle "../$FOLDER_NAME/expl_files/idleprogram.xsm"
# init program
./xfs-interface load --init "../$FOLDER_NAME/expl_files/Assg$ASSIGNMENT/shell.xsm"
# # load int6
./xfs-interface load --int=6 "../$FOLDER_NAME/spl_files/int6.xsm"
# load int7
./xfs-interface load --int=7 "../$FOLDER_NAME/spl_files/int7.xsm"
# load int8
./xfs-interface load --int=8 "../$FOLDER_NAME/spl_files/int8_fork.xsm"
# # load int4
# ./xfs-interface load --int=4 "../$FOLDER_NAME/int4.xsm"
# # load int9
./xfs-interface load --int=9 "../$FOLDER_NAME/spl_files/int9_exec.xsm"
# # load int 10
./xfs-interface load --int=10 "../$FOLDER_NAME/spl_files/int10_exit.xsm"
# load int 11
# ./xfs-interface load --int=11 "../$FOLDER_NAME/int11.xsm"
# # load int 13
# ./xfs-interface load --int=13 "../$FOLDER_NAME/int13.xsm"
# # load int 14
# ./xfs-interface load --int=14 "../$FOLDER_NAME/int14.xsm"
# # load int 15
# ./xfs-interface load --int=15 "../$FOLDER_NAME/int15.xsm"
# # load Module 0 - resource manager
./xfs-interface load --module 0 "../$FOLDER_NAME/spl_files/module0_resource_manager.xsm"
# # load Module 1 - process manager
./xfs-interface load --module 1 "../$FOLDER_NAME/spl_files/module1_process_manager.xsm"
# # load Module 2 - memory manager
./xfs-interface load --module 2 "../$FOLDER_NAME/spl_files/module2_memory_manager.xsm"
# # load Module 4 - device manager
./xfs-interface load --module 4 "../$FOLDER_NAME/spl_files/module4_device_manager.xsm"
# # load Module 5 - scheduler
./xfs-interface load --module 5 "../$FOLDER_NAME/spl_files/module5_scheduler.xsm"
# # load Module 7 - boot
./xfs-interface load --module 7 "../$FOLDER_NAME/spl_files/module7_boot_module.xsm"
# load program
# ./xfs-interface rm "linklist.xsm"

echo Loading Odd program....
./xfs-interface load --exec "../$FOLDER_NAME/expl_files/Assg$ASSIGNMENT/odd.xsm"

echo Loading Even program....
./xfs-interface load --exec "../$FOLDER_NAME/expl_files/Assg$ASSIGNMENT/even.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/expl_files/linklist.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/testpg3.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/testpg4.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/child.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/parent.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/mergep.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/merges.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/cfile.xsm"
# ./xfs-interface load --exec "../$FOLDER_NAME/dfile.xsm"

# echo Loading Prime Program...
# ./xfs-interface load --exec "../$FOLDER_NAME/expl_files/prime.xsm"

cd ../xsm

./xsm --timer 500  $* 
