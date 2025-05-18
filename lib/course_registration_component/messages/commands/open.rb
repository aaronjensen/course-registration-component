module CourseRegistrationComponent
  module Messages
    module Commands
      class Open
        include Messaging::Message

        attribute :course_id, String
        attribute :capacity, Integer

        attribute :time, String
      end
    end
  end
end
