# Bowling Game Kata

This is my attempt at writing the code logic, using TDD, for a bowling game scorecard.

Full details of the problem can be found here:

https://kata-log.rocks/bowling-game-kata

## Approach

I began by writing and passing the test for a 'gutter game' (where all 20 rolls result in 0 pins knocked down). This was accomplished by adding each score of 0 to a single array and then returning the sum of that array.

Next I wrote and passed my second test for a game in which only one pin was knocked down. The production code did not need to be changhed for this test to pass.

It then started to get more tricky with including a spare (all pins are knocked down after the two rolls in a frame and bonus points are added to the overall score which is equal to the number of pins knocked over in the next roll). 

The main challenges I found were tracking the roll and/or frame to ensure I could calculate bonus points for strikes/spares. I experimented with different ideas, including pushing each frame score into an array and using that to calculate strike/spare bonuses before adding to an overall points variable. However it became difficult to have the oversight to look ahead to calculate bonus points and keep clearing the frame array. In the end I opted for one single array to store all the scores and calculate bonuses from that. 


## References

To assist me I made reference to:


- Bowling Game Kata -- Ruby https://www.youtube.com/watch?v=EyMwodeq1h4
- butunclebob.com/files/downloads/Bowling%20Game%20Kata.ppt
