# encoding: UTF-8

require 'ri_cal'

namespace :facebook do
  task :import => :environment do
    File.open("lib/tasks/facebook_birthdays_patshone.ics", "r") do |file|
      components = RiCal.parse(file)
      components.first.events().each do |event|
        summary = event.summary.split(/([a-zA-Zëéöü\-]+\b)/)
        first_name = summary[1]
        last_name = summary[summary.length - 5]
        puts "Creating the following person #{first_name} #{last_name} #{event.dtstart().strftime("%F")}"
        Person.find_or_create_by_first_name_and_last_name(:first_name => first_name, :last_name => last_name, :birth_date => event.dtstart().strftime("%F"))
      end
    end
  end
end

