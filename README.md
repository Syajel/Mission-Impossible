# Mission Impossible
 A prolog program created to solve a simple AI problem

KB.pl contains the agent's original knowledge base, and Mission_Impossible_142.pl attempts to create a solution where the agent Ethan picks up and drops off each IMF member.

The successor state axiom ethanStateChange(X,Y,Z,W,S) is defined as follows:
- X refers to Ethan’s position in the x direction.
- Y refers to Ethan’s position in the y direction.
- Z refers to Ethan’s current carry capacity.
- W refers to the remaining unrescued member list.
- S refers to the current situation.

The available operations are: up, down, left, right, carry, and drop. These make for a problem designed on a grid. These are considered possible actions in the successor state axiom.
