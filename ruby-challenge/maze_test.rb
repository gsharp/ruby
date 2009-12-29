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
  M1 = Maze.new(MAZE1)
  M2 = Maze.new(MAZE2)
  M3 = Maze.new(MAZE3)

=begin
  def test_good_mazes
    assert_equal true, M1.solvable?
    assert_equal true, M2.solvable?
  end

  def test_bad_mazes
    assert_equal false, M3.solvable?
  end

  def test_maze_steps
    assert_equal 44, M1.steps
    assert_equal 75, M2.steps
    assert_equal 0, M3.steps
  end
=end

  def test_maze1_contants
    assert_instance_of Array, M1.maze

    assert_equal 'A', M1.startKey
    assert_equal 'B', M1.finishKey

    startCoord = [1, 13]
    assert_equal startCoord, M1.start

    finishCoord = [7, 23]
    assert_equal finishCoord, M1.finish

    coords = {"A"=>startCoord, "B"=>finishCoord}
    assert_equal coords, M1.coordHash
  end

  def test_maze2_contants
    assert_instance_of Array, M2.maze

    assert_equal 'A', M2.startKey
    assert_equal 'B', M2.finishKey

    startCoord = [4, 7]
    assert_equal startCoord, M2.start

    finishCoord = [11, 35]
    assert_equal finishCoord, M2.finish

    coords = {"A"=>startCoord, "B"=>finishCoord}
    assert_equal coords, M2.coordHash

  end

  def test_maze3_contants
    assert_instance_of Array, M3.maze

    assert_equal 'A', M3.startKey
    assert_equal 'B', M3.finishKey

    startCoord = [5, 15]
    assert_equal startCoord, M3.start

    finishCoord = [9, 17]
    assert_equal finishCoord, M3.finish

    coords = {"A"=>startCoord, "B"=>finishCoord}
    assert_equal coords, M3.coordHash
  end

end