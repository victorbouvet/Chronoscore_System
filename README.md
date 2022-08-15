# Football chronoscore system
The objective of this project was to create a scoring system for a local and visiting team during a soccer game. Moreover, it was necessary to have a stopwatch of 45min (duration of a half-time).

This project was to implement a multiplexed scoring and timing system that would meet the following criteria
- Management of the score of both teams
- Counting of the elapsed time with stop at half-time
- Display of the score and the elapsed time on a 7-segment display

## Chronoscore architecture

![Screenshot_20220815-220832_Docs](https://user-images.githubusercontent.com/91113788/184711148-014af828-a47c-4866-85d6-ab73fba7d422.jpg)

This function receives as input :
- GCLK an oscillator generating a frequency of 100 MHz
- START which starts the chronometer
- WAIT_t which pauses the chronometer
- RESET which resets the chronometer
- BPL which increases by 1 the score of the home team
- BPV which increases by 1 the score of the visiting team
- BPreset which resets the score
- VGA ONOFF which turns on the VGA screen
- VGA TEST which sends the test images to the VGA screen 

And at the output, we have all the anodes (8 in total) and the leds (8 in total) SCORE and TEMPS (respectively for the score and the chronometer) as well as HSYNCH and VSYNCH which manage the horizontal and vertical synchronization, but also RED, BLUE and GREEN the color pixels.
![Screenshot_20220815-220850_Docs](https://user-images.githubusercontent.com/91113788/184709869-c5466e85-9cde-4bb1-a7d8-0dd4cf185838.jpg)

There is a multitude of sub-blocks composing chronoscore including three sequential logic blocks, that is to say two AND gates, which allow the incrementation and the pause, and a NOT gate, which allows the reset of the chronometer

There is the sub-block chronometer which allows to manage the chronometer of the soccer game, the sub-block score which gives the scores of the teams, the sub-block display which allows to display on the displays, the sub-block timeGenerator returns the various clocks, and finally the sub-block vgaDisplay which manages the display on big screen.

There is a multitude of sub-blocks composing chronoscore including three sequential logic blocks, that is to say two AND gates, which allow the incrementation and the pause, and a NOT gate, which allows the reset of the chronometer

There is :
- the sub-block chronometer which allows to manage the chronometer of the soccer game,
- the sub-block score which gives the scores of the teams,
- the sub-block display which allows to display on the displays, 
- the sub-block timeGenerator returns the various clocks, 
- the sub-block vgaDisplay which manages the display on big screen.

## Method of implementation and testing of chronoscore

We implemented chronoscore with the blocks we created (score, display and chronometer) as well as those provided (vgaDisplay and timeGenerator). We used the Implement Design tool and Create Programming File from Xilinx to then put the program on the board with the IMPACT tool. 
 
We then have the different functionalities requested by the specifications (score management, start and pause of the timer, stop the timer after 45 minutes, reset the timer and the score of both teams).
 
The Xilinx Design Summary tool indicates that the chronoscore is useful for 31 IOBs (Input/Output Bounds) out of the 210 available on the FPGA board, i.e. 15%. The program uses few I/Os which shows us that the program is fast, the lower the number of IOBs the faster the program will be. The program is an I/O Bound because it depends on external information (push buttons, switches).

## Conclusion

We did not encounter any particular problem, we succeeded in having a functional stopwatch and a score management respecting the specifications.    
We could improve the program so that we don't have to reset the stopwatch at the end of the 45 minutes in order to manage the second half. It would be interesting to propose another duration for other sports, for example, basketball has 4 quarters of 12 minutes. We could have a more flexible stopwatch that is suitable for several sports at the same time.

We did not address the display of the score and the timer on a screen that should have been managed by the vgaDisplay block. This would allow the score and time to be displayed to the public on a large LCD screen in the stadium.
