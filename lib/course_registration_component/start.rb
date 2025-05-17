module CourseRegistrationComponent
  module Start
    def self.call
      command_category = StreamName.command_category
      Consumers::Commands.start(command_category)

      category = StreamName.category
      Consumers::Events.start(category)
    end
  end
end
