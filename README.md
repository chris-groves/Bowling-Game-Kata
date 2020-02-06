# Bowling Game Kata

This is my attempt at writing the code logic, using TDD, for a bowling game scorecard.

Full details of the problem can be found here:

https://kata-log.rocks/bowling-game-kata

## Approach

I began by writing and passing the test for a 'gutter game' (where all 20 rolls result in zero pins being knocked down). This was accomplished by adding each score of zero to a single array and then returning the sum of that array.

Next I wrote and passed my second test for a game in which only one pin was knocked down. The production code did not need to be changed for this test to pass.

It then started to get more tricky with including a spare (all pins are knocked down after the two rolls in a frame and bonus points are added to the overall score which is equal to the number of pins knocked over in the next roll). To accomplish this I created a roll count, a bonus points marker and a bonus points total. Whenever a ball was rolled, the roll count would increase. If the roll number was an odd number (indicating the start of a new frame) and the previous two entries in the score array added up to ten, the bonus points marker would increase. When a ball is rolled, if the bonus points marker was marked as true, the pins knocked down would be added to the bonus points total as well as the score array as usual. The total score would then be calculated by adding the array entries together with the addition of the bonus points total.

The next feature was to include bonus points from a strike (if all the pins are knocked down in the first roll of the frame, the bonus points would include the total pins knocked down in the next two rolls). To accomodate this I changed the bonus points marker to a counter. If a spare was scored, one point is added to the counter, with two for a strike. The counter would then be checked, bonus points added and then the counter reduced by one. This allowed for the next two rolls to add bonus points.

At this point I was not happy with my solution, feeling that it was too complex and unwieldy. I browsed online to unblock myself; the examples I used to help have been referenced below. I stuck with one array for storing the roll scores and then calculated the total score by looping over the array, checking for strike and spare scenarios.

The last feature needed was a 'perfect game' in which every roll resulted in a strike, meaning the game would consist of twelve rolls totalling 300 points. I simply had to write the test for this as the production code already accommodated it. 


## References

To assist me I made reference to:


- Bowling Game Kata -- Ruby https://www.youtube.com/watch?v=EyMwodeq1h4
- butunclebob.com/files/downloads/Bowling%20Game%20Kata.ppt
