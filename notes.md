# Notes

## Requirements

- A course cannot accept more than N students
- N, the course capacity, can change at any time to any positive integer different from the current one
- The student cannot join more than 10 courses

### Not relevant

- The course title can change at any time to any title different from the current one

## Streams

- courseRegistration:command-{courseID}
- courseRegistration-{courseID}
- studentCourseRegistration-{studentID}

## Messages

### Commands

#### Open
- courseID
- capacity
- time

#### RegisterStudent
- courseID
- studentID
- time

#### ChangeCapacity
- courseID
- capacity
- time

### Events

#### CourseRegistration

##### Opened
- courseID
- capacity
- time

##### CapacityChanged
- courseID
- capacity
- time

##### StudentRegistrationRejected
- courseID
- time

##### StudentRegistered
- courseID
- studentID
- time

##### StudentRegistrationFailed
- courseID
- studentID
- time

#### Student

##### RegistrationInitiated
- studentID
- courseID
- time

##### RegistrationFailed
- studentID
- courseID
- time

##### Registered
- studentID
- courseID
- time

## Message Flow

### Successful Registration

RegisterStudent (courseRegistration-1)
RegistrationInitiated (studentCourseRegistration-11)
StudentRegistered (courseRegistration-1)
Registered (studentCourseRegistration-11)

### Student Cannot Register (At Capacity)

RegisterStudent (courseRegistration-1)
RegistrationFailed (studentCourseRegistration-11)
StudentRegistrationFailed (courseRegistration-1)

### Course Cannot Accept Another Student (At Capacity)

RegisterStudent (courseRegistration-1)
RegistrationInitiated (studentCourseRegistration-11)
StudentRegistrationRejected (courseRegistration-1)
StudentRegistrationFailed (courseRegistration-1)
RegistrationFailed (studentCourseRegistration-11)


Messages::Commands::RegisterStudent
Messages::Events::StudentRegistered
Messages::StudentEvents::RegistrationInitiated
