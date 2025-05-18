module CourseRegistrationComponent
  module Controls
    module ID
      def self.example(...)
        Identifier::UUID::Controls::Incrementing.example(...)
      end

      def self.random
        Identifier::UUID::Random.get
      end
    end
  end
end
