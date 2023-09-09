#!/bin/ruby

a = (1..100).to_a.select(&:even?)
puts a
