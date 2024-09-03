/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth
== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the north south east and west.
+ [Take the east tunnel] -> east_tunnel 
+ [Take the west tunnel] -> west_tunnel
+ [Take the north tunnel] -> north_tunnel
+ [Take the south tunnel] -> south_tunnel
* [Pick up the torch] -> torch_pickup
== north_tunnel ==
You are in the north.
+ [Go Back] -> cave_mouth
-> END
== south_tunnel ==
You are in the south tunnel.
+ [Go Back]-> cave_mouth
== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END
== west_tunnel ==
You are in the west
+ [Go Back] -> cave_mouth
-> END
=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END
== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
* {not coin_pickup} [Pick up coins] -> coin_pickup
== coin_pickup ==
After picking up the coins you activate a trap -> booby_trap
== booby_trap ==
You Die
-> END
