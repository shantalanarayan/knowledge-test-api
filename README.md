# Knowledge Test Api

An API to store question and answer grouped by a topic title. It allows user to register and create their own sets of question and answers.


## References:
* [Knowledge test application](https://shantalanarayan.github.io/knowledge-test-client/)
* [Knowledge test api url](https://sn-knowledge-test.herokuapp.com/examples)
* [Knowledge test application repo](https://github.com/shantalanarayan/knowledge-test-client)


## API End Points

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out`            | `users#signout`   |
| PATCH  | `/change-password`     | `users#changepw`  |
| GET    | `/topics`               | `topics#index`     |
| POST   | `/topics`               | `topics#create`    |
| GET    | `/topics/:id`           | `topics#show`      |
| PATCH  | `/topics/:id`           | `topics#update`    |
| DELETE | `/topics/:id`           | `games#delete`     |

All data returned from API actions is formatted as JSON.

## Technologies Used
* Ruby
* Rails

## Planning

* Brainstormed ideas with team members
* Shortlisted 3 projects and ran it by the instructor
* Instructor directed to implement application with minimal resources for brevity of time.
* Once the project was finalized, created below entity diagram and got it approved by instructor.

## Development process
 * Created resources using scaffolding
 * Added the table and column using db:migration.
 * Created curl scripts to test api endpoints locally during development.

## Problem solving strategies
 * During development of frontend application, I wanted to enable auto-signin on sign-up. One way to do this was to call sign-in api immediately on successful sign-up. However, that meant it will take 2 api calls to accomplish auto sign-in on sign-up. The reason, i couldn't use json object returned during signup was that it was missing a token. Hence, I updated the user controller's sign-up action to return `UserLoginSerializer` on successful signup. `UserLoginSerializer` generates token when returning the JSON object to the caller. 
 * During frontend implementation, I realized that the index action is returning all topics in the database. However, I needed only the ones that belonged to the logged in user. Hence, I researched on how to implement that and later stumbled upon a code that specified `current_user.examples` and just out of curiosity replaced `Topics.all` with `current_user.topics` and tested the change in behavior with that code. Post that change, only topics related to current user is being returned.
 * Similarly, during front end development, i realized on update of a topic when I refresh the topics list, the updated topic loses its position and ends up at the end of the list. This created a bad user experience. After a little research, I figured that it would be easier to return a sorted list from backend thus not requiring me to sorting it in the frontend. I updated index action on topics controller to return topics sorted by title first and then it's id.

## Entity relation diagram
![Entity relation diagram - user has many topics](https://github.com/shantalanarayan/knowledge-test-api/blob/KTApi/docs/kt-erd.jpeg)
