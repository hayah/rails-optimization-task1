# frozen_string_literal: true

require 'ruby-prof'
require_relative '../task-1'

RubyProf.measure_mode = RubyProf::WALL_TIME

result = RubyProf.profile do
  work
end

printer = RubyProf::CallTreePrinter.new(result)
printer.print(path: 'reports', profile: 'callgrind')