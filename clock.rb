require 'clockwork'

module Clockwork
  
  times = ENV['HOUR'].split(',') unless ENV['HOUR'].nil?
  puts times
  every(1.day, 'backup.job', :at => times, :tz => 'Europe/Paris') {
    `bundle exec ruby entry.rb`
  }
end
