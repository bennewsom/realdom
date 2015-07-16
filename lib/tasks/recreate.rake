# Use this rake task to re-build your schema and to load seed data
namespace :db do
  desc 'This should be run in development only'
  task :dev_only do
    fail 'This task can only be run in the development environment' unless Rails.env.development?
  end

  task recreate: ['environment', 'db:dev_only', 'db:drop', 'db:create', 'db:migrate', 'db:seed']
end
