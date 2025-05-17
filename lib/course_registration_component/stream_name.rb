module CourseRegistrationComponent
  module StreamName
    def self.category
      "courseRegistration"
    end

    def self.command_category
      Messaging::StreamName.command_category_stream_name(category)
    end
  end
end
