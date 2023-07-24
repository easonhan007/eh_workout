# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

## Default Account

By default, the system creates an account `admin@itest.info` with the password `123456`.

## Entities


### Category

- name
- user_id: creator of the category
- record_kls: 

### Body Part

- name
- user_id: creator of the body part

### Exercise

An exercise belongs to category and body part.

Fields of exersice

- name
- image
- category_id
- body_part_id

### Workout Template

A workout template contains several exercises.

- name
- user_id

### Defined Items

- exercise_id
- template_id

### Event

An event contains only _one_ template and several workout records.

- name 
- template_id

### Workout Records

Each workout records belongs to an exercise.

- reps
- weight
- duration
- distance
- user_id

### RepsOnlyRecords

STI, parent is WorkoutRecords

- reps
- user_id

### DurationRecords

STI, parent is WorkoutRecords

- duration
- user_id

### StrengthRecords

STI, parent is WorkoutRecords
- reps
- weight
- user_id

### CardioRecords

STI, parent is WorkoutRecords
- duration
- distance
- user_id