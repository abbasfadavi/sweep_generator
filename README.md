# sweep_generator


if your clk = 100M and need 30M to 40M you should set freq1= 30e6/fs and req2= 40e6/fs;


To create an IP with your desired specifications: open ProjectGeneration.tcl

Change the values of DSPDevice, DSPFamily, DSPPackage and DSPSpeed according to your desired device

open vivado

in tcl consol change directory and run ProjectGeneration.tcl

for example:

cd C:/Users/abbas/Desktop/sweep_generator/

source C:/Users/abbas/Desktop/sweep_generator/ProjectGeneration.tcl

In case of any problems, suggestions or criticism, contact my email abbasfadavi@gmail.com
