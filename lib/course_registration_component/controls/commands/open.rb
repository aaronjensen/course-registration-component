module CourseRegistrationComponent
  module Controls
    module Commands
      module Open
        def self.example(course_id: nil)
          course_id ||= self.course_id

          open = Messages::Commands::Open.new
          open.course_id = course_id
          open.capacity = capacity
          open.time = time
          open
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
