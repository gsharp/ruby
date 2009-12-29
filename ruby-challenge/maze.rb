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
    @startKey = 'A'
    @finishKey = 'B'
    @start = getPos @startKey
    @finish = getPos @finishKey
  end
  def solvable?
  end
  def steps
  end
  def getPos str
    line = 0
    @maze.each do |i|
      if i.index(str) != nil
        return "#{line},#{i.index(str)}"
      end
      line += 1
    end
  end
  def startStop
    puts "#{@startKey} position is: #{@start.split(',')}"
    puts "#{@finishKey} position is: #{@finish.split(',')}"
  end
end

m1 = Maze.new(MAZE1)
m2 = Maze.new(MAZE2)
m3 = Maze.new(MAZE3)

def doing str
  puts "------#{str}-----"
end

doing 'MAZE1'
m1.startStop
doing 'MAZE2'
m2.startStop
doing 'MAZE3'
m3.startStop

