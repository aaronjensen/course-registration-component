require "eventide/postgres"

require "course_registration_component/stream_name"

require "course_registration_component/course_registration"
require "course_registration_component/projection"
require "course_registration_component/store"

require "course_registration_component/messages/commands/open"

require "course_registration_component/handlers/commands"
require "course_registration_component/handlers/events"

require "course_registration_component/consumers/commands"
require "course_registration_component/consumers/events"

require "course_registration_component/start"
