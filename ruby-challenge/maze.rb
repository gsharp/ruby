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
  attr_reader :maze,:startKey,:finishKey,:start,:finish,:coordHash
  def initialize theMaze
    @maze  = theMaze.split("\n")
    @startKey = 'A'
    @finishKey = 'B'
    @start = getPos @startKey
    @finish = getPos @finishKey
    @coordHash = {@startKey => @start, @finishKey => @finish}
  end
  def solvable?
  end
  def steps
  end
  def getPos str
    line = 0
    @maze.each do |i|
      if i.index(str) != nil
        return [line,i.index(str)]
      end
      line += 1
    end
  end
end


