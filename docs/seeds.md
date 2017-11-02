# Seeds

This is a guide to use a custom task for running idividual seed files.

## Problem

The default `seeds.rb` file is very useful for Development purposes, it adds a lot of information into our database to get a more 'realistic' experience when we develop.
But sometimes a lot of the information we add is common to the production environment too and running the `bundle exec rake db:seed` command in production is definitely not an option.
So for this cases we created a custom rake task that can deal with different seed files.

## Example

Say we have an e-commerce app and we want to create a seed file for the categories and subcategories (same info we will use in production).

```
# db/seeds/categories.rb
Category.transaction do
  Category.create(name: 'Cell phones')
  Category.create(name: 'Computers')
  ...
end
```

Then you only need to run `bundle exec rake db:seed:categories` and this will run the `categories.rb` seed file alone.
In order to create the categories in the normal seed you can simply:

```
# db/seeds.rb
require_relative 'seeds/categories'
```
