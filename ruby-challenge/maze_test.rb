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
    #assert_equal true, Maze.new(MAZE1).solvable?
    #assert_equal true, Maze.new(MAZE2).solvable?
  end

  def test_bad_mazes
    #assert_equal false, Maze.new(MAZE3).solvable?
  end

  def test_maze_steps
    #assert_equal 44, Maze.new(MAZE1).steps
    #assert_equal 75, Maze.new(MAZE2).steps
    #assert_equal 0, Maze.new(MAZE3).steps
  end
  
  def test_maze1_contants
    assert_instance_of Array, Maze.new(MAZE1).maze

    assert_equal 'A', Maze.new(MAZE1).startKey
    assert_equal 'B', Maze.new(MAZE1).finishKey

    startCoord = [1, 13]
    assert_equal startCoord, Maze.new(MAZE1).start

    finishCoord = [7, 23]
    assert_equal finishCoord, Maze.new(MAZE1).finish

    coords = {"A"=>startCoord, "B"=>finishCoord}
    assert_equal coords, Maze.new(MAZE1).coordHash
  end

  def test_maze2_contants
    assert_instance_of Array, Maze.new(MAZE2).maze

    assert_equal 'A', Maze.new(MAZE2).startKey
    assert_equal 'B', Maze.new(MAZE2).finishKey

    startCoord = [4, 7]
    assert_equal startCoord, Maze.new(MAZE2).start

    finishCoord = [11, 35]
    assert_equal finishCoord, Maze.new(MAZE2).finish

    coords = {"A"=>startCoord, "B"=>finishCoord}
    assert_equal coords, Maze.new(MAZE2).coordHash

  end

  def test_maze3_contants
    assert_instance_of Array, Maze.new(MAZE3).maze

    assert_equal 'A', Maze.new(MAZE3).startKey
    assert_equal 'B', Maze.new(MAZE3).finishKey

    startCoord = [5, 15]
    assert_equal startCoord, Maze.new(MAZE3).start

    finishCoord = [9, 17]
    assert_equal finishCoord, Maze.new(MAZE3).finish

    coords = {"A"=>startCoord, "B"=>finishCoord}
    assert_equal coords, Maze.new(MAZE3).coordHash
  end

end