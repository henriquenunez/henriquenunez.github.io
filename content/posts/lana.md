<!-- ---
title: "Lidar Assisted Navigator"
date: 2023-07-14T16:53:35-03:00
draft: false 
---

# LANA - Lidar Assisted Navigator

This project began as the assignment for the "mobile robots programming" subject
of my B.Sc. in CS. The scope was quite free, and the only requirement is that a
mobile robot was able to navigate an environment with obstacles and reach a
predefined target. The logic could be simulated, or we could actually build a
robot for that, although time was short for the latter option. For the sake of
learning and simplicity, this project was developed using Webots.

## The setup

The robot is a Pioneer. Since we got to choose, I put a GPS, a compass and a LiDAR on the robot (hence
the project name, not because of lana del rey, or yes?). Since the position is
known, the problem falls from a SLAM to a mapping, since the position is known
from the GPS (although we can increase the complexity if we add errors to the
measures).

## Plotting utility (1st attempt)

So, we are building a map, and the first idea was to have a live plot that would
update whenever new information was acquired by the robot.

But boi... making it run properly was hard at first, so I created a separate
application to handle the plotting. It communicated to the main controller by a
fifo, and it had basically 2 problems:
- It is hard to syncronize stuff, and often the fifo would get full and the
  controller would lock (waiting for the fifo to empty);
- Expected communication+serialization+deserialization overhead;
- A lot of logic had to be duplicated, to convert from world coordinates to map
  coordinates, and this is terrible to manage in the long run.

## Embedded plotting

After some research and googling, I was able to open a matplotlib animation
with an appropriate backend. This made the application much more responsive and
self contained, solving the problems that appeared in the 1st attempt.
 -->
