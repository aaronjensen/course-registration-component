module CourseRegistrationComponent
  module Handlers
    class Events
      include Messaging::Handle
      include Messaging::StreamName

      dependency :write, Messaging::Postgres::Write
      dependency :clock, Clock::UTC
      dependency :store, Store

      def configure(session: nil)
        Messaging::Postgres::Write.configure(self, session:)
        Clock::UTC.configure(self)
        Store.configure(self, session:)
      end

      category StreamName.category

      # handle DoSomething do |do_something|
      # end
    end
  end
end
