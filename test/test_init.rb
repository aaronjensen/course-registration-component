ENV["CONSOLE_DEVICE"] ||= "stdout"
ENV["LOG_LEVEL"] ||= "_min"

ENV["TEST_BENCH_DETAIL"] ||= ENV["D"]

puts
puts "TEST_BENCH_DETAIL: #{ENV["TEST_BENCH_DETAIL"].inspect}"
puts

require_relative "../init"
require "course_registration_component/controls"

require "test_bench"; TestBench.activate

require "messaging/fixtures"
require "entity_projection/fixtures"
require "schema/fixtures"

include CourseRegistrationComponent
