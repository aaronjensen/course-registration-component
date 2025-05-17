module CourseRegistrationComponent
  class Store
    include EntityStore

    category StreamName.category
    entity CourseRegistration
    projection Projection
    reader MessageStore::Postgres::Read, batch_size: 1000
  end
end
