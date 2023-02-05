# Project Vision

The web app will assist the creator in creating a web portfolio website. The website will illustrate the following:

- Work Experiences
- Side Projects
- Blog
- Landing Page
- About Me

Each of the above points will have its controller.

## About Me

| ![About-Me page skill drop down closed](./ReadMe_Image/AboutMe.png) | ![About-Me page skill drop down closed](./ReadMe_Image/AboutMe-Skills.png) |
| ------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| About Me Page with skill closed                                     | About Me Page with drop down skill opened                                  |

### About Me Page

#### Creator

- As a creator, I want to enter my **name**.
- As a creator, I want to enter my **position**.
- As a creator, I want to enter my **email address**.
- As a creator, I want to **list** my **social media pages**.
- As a creator, I want to talk about myself.

- As a creator, I want to **list** my **skills**.

#### Data

An E-R diagram was derived using the above mock-up.

| ![About-Me Entity-Relationship Diagram](./ReadMe_Image/AboutMe-ER.png) |
| ---------------------------------------------------------------------- |
| About-Me Entity-Relationship Diagram                                   |

### Create Models that relate to About-Me Page.

#### Model: Creator

After mini-test. the below validation for Model Creator.

```
class Creator < ApplicationRecord
  before_save {
    self.name = name.downcase.titleize
    self.position = position.downcase.titleize
    self.email = email.downcase
  }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}
end
```

#### Model: Social

| Attribute  | Type   |          |
| ---------- | ------ | -------- |
| name       | string | not null |
| url        | string | not null |
| svg        | string | null     |
| creator_id | bigint | not null |
