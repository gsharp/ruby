#!/usr/local/bin/ruby1.9 -w
#  
#  maze.rb
#  ruby challenge for rubylearning.com
#  
#  Created by GlenC on 2009-12-28.
#  Copyright 2009 glenc.com. All rights reserved.
#


require 'mazes'

class Maze 
  def initialize theMaze
    @maze  = theMaze.split("\n")
  end
  def solvable?
  end
  def steps
  end
  def getPos str
    line = 1
    index = nil
    @maze.each do |i|
      if i.index(str) != nil
        puts "Found #{str} on line #{line}, column #{i.index(str)}"
      end
      line += 1
    end
  end
end

m1 = Maze.new(MAZE1)
m2 = Maze.new(MAZE2)
m3 = Maze.new(MAZE3)

def doing str
  puts "------#{str}-----"
end

doing 'MAZE1'
m1.getPos('A')
m1.getPos('B')
doing 'MAZE2'
m2.getPos('A')
m2.getPos('B')
doing 'MAZE3'
m3.getPos('A')
m3.getPos('B')
