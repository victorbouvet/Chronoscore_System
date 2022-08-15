# Football chronoscore system
The objective of this project was to create a scoring system for a local and visiting team during a soccer game. Moreover, it was necessary to have a stopwatch of 45min (duration of a half-time).

This project was to implement a multiplexed scoring and timing system that would meet the following criteria
- Management of the score of both teams
- Counting of the elapsed time with stop at half-time
- Display of the score and the elapsed time on a 7-segment display

## Chronoscore architecture
![Screenshot_20220815-220850_Docs](https://user-images.githubusercontent.com/91113788/184709869-c5466e85-9cde-4bb1-a7d8-0dd4cf185838.jpg)
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

And at the output, we have all the anodes (8 in total) and the leds (8 in total) as well as HSYNCH and VSYNCH which manage the horizontal and vertical synchronization, but also RED, BLUE and GREEN the color pixels.

There is a multitude of sub-blocks composing chronoscore including three sequential logic blocks, that is to say two AND gates, which allow the incrementation and the pause, and a NOT gate, which allows the reset of the chronometer

There is the sub-block chronometer which allows to manage the chronometer of the soccer game, the sub-block score which gives the scores of the teams, the sub-block display which allows to display on the displays, the sub-block timeGenerator returns the various clocks, and finally the sub-block vgaDisplay which manages the display on big screen.

There is a multitude of sub-blocks composing chronoscore including three sequential logic blocks, that is to say two AND gates, which allow the incrementation and the pause, and a NOT gate, which allows the reset of the chronometer

There is :
- the sub-block chronometer which allows to manage the chronometer of the soccer game,
- the sub-block score which gives the scores of the teams,
- the sub-block display which allows to display on the displays, 
- the sub-block timeGenerator returns the various clocks, 
- the sub-block vgaDisplay which manages the display on big screen.

