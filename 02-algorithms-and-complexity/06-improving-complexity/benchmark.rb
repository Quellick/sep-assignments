require_relative 'improving_complexity_version_one'
require_relative 'improving_complexity_version_two'
require_relative 'improving_complexity_version_three'

require 'benchmark'
include Benchmark

a = (1..10000).map { rand }
b = (1..10000).map { rand }
c = (1..10000).map { rand }
d = (1..10000).map { rand }

Benchmark.benchmark(CAPTION, 7, FORMAT, ">avg:") do |x|
  t1 = x.report("version 1: ") { 
    # puts insertion_sort(a, b, c, d).to_s
    insertion_sort(a, b, c, d)
  } 
  t2 = x.report("version 2: ") { 
    # HeapArray.new(a, b, c, d).print
    HeapArray.new(a, b, c, d)
  } 
  t3 = x.report("version 3: ") { 
    # puts heap_sort(a, b, c, d).to_s
    heap_sort(a, b, c, d)
  } 
end