# Bowling Game Kata

This is my attempt at writing the code logic, using TDD, for a bowling game scorecard.

Full details of the problem can be found here:

https://kata-log.rocks/bowling-game-kata

The main challenges I found were tracking the roll and/or frame to ensure I could calculate bonus points for strikes/spares. I experimented with different ideas, including pushing each frame score into an array and using that to calculate strike/spare bonuses before adding to an overall points variable. However it became difficult to have the oversight to look ahead to calculate bonus points and keep clearing the frame array. In the end I opted for one single array to store all the scores and calculate bonuses from that. To assist me I made reference to:


- Bowling Game Kata -- Ruby https://www.youtube.com/watch?v=EyMwodeq1h4
- butunclebob.com/files/downloads/Bowling%20Game%20Kata.ppt
