# API Overview

| Prefix         |  Verb  | URI Pattern | Controller#Action |
| :--------------: | :------: | :-----------: | :-----------------: |
| category_products | GET |   /categories/:category_id/products(.:format)     | products#index |
|              |  POST  | /categories/:category_id/products(.:format) |    products#create |
| category_product | GET |   /categories/:category_id/products/:id(.:format) | products#show |
|                | PATCH |  /categories/:category_id/products/:id(.:format) | products#update |
|                | PUT |    /categories/:category_id/products/:id(.:format) | products#update |
|                | DELETE | /categories/:category_id/products/:id(.:format) | products#destroy |
|       categories | GET |    /categories(.:format)                           | categories#index |
|                | POST |   /categories(.:format)                           | categories#create |
|         category | GET |    /categories/:id(.:format)                       | categories#show |
|                | PATCH |  /categories/:id(.:format)                       | categories#update |
| | PUT |    /categories/:id(.:format)                       | categories#update |
|                | DELETE | /categories/:id(.:format)                       | categories#destroy |
