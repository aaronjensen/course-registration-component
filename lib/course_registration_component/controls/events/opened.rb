module CourseRegistrationComponent
  module Controls
    module Events
      module Opened
        def self.example(course_id: nil)
          course_id ||= self.course_id

          opened = Messages::Events::Opened.new
          opened.course_id = course_id
          opened.capacity = capacity
          opened.time = time
          opened
        end

        def self.course_id
          EntityID::Course.example
        end

        def self.capacity
          11
        end

        def self.time
          Controls::Time::Effective.example
        end
      end
    end
  end
end
