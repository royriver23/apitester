# Main Technologies tested
- Mongo Integration - mongoid
- RSpec, Shoulda Matchers, Factory Girl, Faker
- Rack Attack
- CORS
- API Only Mode


# API Overview

## Version 1

| Prefix         |  Verb  | URI Pattern | Controller#Action |
| :--------------: | :------: | :-----------: | :-----------------: |
|            v1_users | GET |    /v1/users(.:format)                                | api/v1/users#index |
|                   |  POST |   /v1/users(.:format)                                | api/v1/users#create |
|             v1_user | GET |    /v1/users/:id(.:format)                            | api/v1/users#show |
|                     | PATCH |  /v1/users/:id(.:format)                            | api/v1/users#update |
|                    | PUT |    /v1/users/:id(.:format)                            | api/v1/users#update |
|                   |  DELETE | /v1/users/:id(.:format)                            | api/v1/users#destroy |
|v1_category_products | GET |    /v1/categories/:category_id/products(.:format)     | api/v1/products#index |
|                   |  POST |   /v1/categories/:category_id/products(.:format)     | api/v1/products#create |
| v1_category_product | GET |    /v1/categories/:category_id/products/:id(.:format) | api/v1/products#show |
|                     | PATCH |  /v1/categories/:category_id/products/:id(.:format) | api/v1/products#update |
|                    | PUT |    /v1/categories/:category_id/products/:id(.:format) | api/v1/products#update |
|                   |  DELETE | /v1/categories/:category_id/products/:id(.:format) | api/v1/products#destroy |
|       v1_categories | GET |    /v1/categories(.:format)                           | api/v1/categories#index |
|                   |  POST |   /v1/categories(.:format)                           | api/v1/categories#create |
|         v1_category | GET |    /v1/categories/:id(.:format)                       | api/v1/categories#show |
|                     | PATCH |  /v1/categories/:id(.:format)                       | api/v1/categories#update |
|                    | PUT |    /v1/categories/:id(.:format)                       | api/v1/categories#update |
|                   |  DELETE | /v1/categories/:id(.:format)                       | api/v1/categories#destroy |
