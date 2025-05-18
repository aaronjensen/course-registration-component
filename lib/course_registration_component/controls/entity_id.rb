module CourseRegistrationComponent
  module Controls
    module EntityID
      module Course
        def self.example
          ID.example(increment: id_increment)
        end

        def self.id_increment
          1
        end
      end

      module Student
        def self.example
          ID.example(increment: id_increment)
        end

        def self.id_increment
          2
        end
      end
    end
  end
end
