module CourseRegistrationComponent
  module Messages
    module Events
      class Opened
        include Messaging::Message

        attribute :course_id, String
        attribute :capacity, Integer

        attribute :time, String
      end
    end
  end
end
