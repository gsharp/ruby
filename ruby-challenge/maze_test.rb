#!/usr/local/bin/ruby1.9 -w
# 
#  maze_test.rb
#  ruby challenge for rubylearning.com
#  
#  Created by GlenC on 2009-12-28.
#  Copyright 2009 glenc.com. All rights reserved.
#

require 'test/unit'
require 'mazes'
require 'maze'


class MazeTest < Test::Unit::TestCase
  def test_good_mazes
    assert_equal true, Maze.new(MAZE1).solvable?
    assert_equal true, Maze.new(MAZE2).solvable?
  end

  def test_bad_mazes
    assert_equal false, Maze.new(MAZE3).solvable?
  end

  def test_maze_steps
    assert_equal 44, Maze.new(MAZE1).steps
    assert_equal 75, Maze.new(MAZE2).steps
    assert_equal 0, Maze.new(MAZE3).steps
  end
end 
