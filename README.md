Lab2_HH
=======

For Lab 2 ECE 281

* Basic Adder Schematic: 
 
![Hello](https://github.com/vipersfly23/Lab2/blob/master/Basic_Add_Schematic.GIF?raw=true "Basic Adder Schematics")

* Full Adder Schematics: 

![alt text](https://github.com/vipersfly23/Lab2/blob/master/Full_adder_Picture.GIF?raw=true "Full Adder Schematics")

* Full Adder and Subtractor Schematics: 

![alt text](https://github.com/vipersfly23/Lab2/blob/master/Adder_subtractor.GIF?raw=true "Full Adder/Subtractor Schematics")

## Steps
* Basic Adder was built using XOR gates, and AND gates as showns in the schematics
* A VHDL module was established with 4 inputs, a carry vector, and an output vector called sum.
* These were all mapped according to the Full Adder Schematics.
* The Adder was easily functional.
* A multiplexer was duplicated with the when statements.
* An input signal was created, that would detect when the button was pressed for subtraction.
* If the button was pressed the when statements would act as a multiplexer, and take the 2's complement of B input.
* Similar to the Full adder and Subtractor schematic above.
* Overflow was detected using 2's complement rules.
* The testbench used nested for loops that would cycle through each value of the 4 bit numbers and add them.
* If a statment returned false, a report would be displayed for the user.
* This concludes the steps for Lab2.


##Functionality
* 1 bit full adder *FULLY FUNCTIONAL*
* 4 bit adder *FULLY FUNCTIONAL*
* Subtraction *FULLY FUNCTIONAL*
* Overflow Detection *FULLY FUNCTIONAL*
* Looping self-checking testbench *Half Functional*
      * File has unitialized values
  
##Links to Files

[.UCF file](https://github.com/vipersfly23/Lab2/blob/master/four_bit_adder.ucf)

[Adder Structural](https://github.com/vipersfly23/Lab2/blob/master/Her_full_adder.vhd)

[VHDL file](https://github.com/vipersfly23/Lab2/blob/master/Lab2Her.vhd)

[Testbench file](https://github.com/vipersfly23/Lab2/blob/master/Her_Testbench.vhd)




## Documentation: I referenced the following website: 

https://www.google.com/search?q=carry+out+ripple+adder&rls=com.microsoft:en-US:IE-Address&source=lnms&tbm=isch&sa=X&ei=FB4EU_axGo7gsATqt4HQCg&ved=0CAkQ_AUoAQ&biw=1280&bih=654#q=4+bit+full+adder%2Fsubtractor&rls=com.microsoft:en-US:IE-Address&tbm=isch&facrc=_&imgdii=_&imgrc=0g0FyKXXzS6-PM%253A%3B1nbPsHvPEjVxPM%3Bhttp%253A%252F%252Fwww.tutorialspoint.com%252Fcomputer_logical_organization%252Fimages%252Ffourbitadder_blockdiagram.jpg%3Bhttp%253A%252F%252Fwww.tutorialspoint.com%252Fcomputer_logical_organization%252Fcombinational_circuits.htm%3B560%3B226

I worked with C3C Terragnoli on the testbench.

no other helped received.




