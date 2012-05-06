namespace :errands do
  desc "Clearing all the entries"
  task :clear => :environment do
  	Entry.destroy_all
  	Entry.create!(message: "Clearing messages please refresh", person: "Automated")
  end
end