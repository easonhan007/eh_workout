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
- behavior

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

### Workout

A workout contains only _one_ template and several workout records.

### Workout Records

Each workout records belongs to an exercise.
