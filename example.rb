require 'clockwork'
include Clockwork

handler do |job|
	puts "Running job: #{job}"
end

every(10.seconds, 'run.me.every.10.seconds')
every(1.minute, 'run.me.every.minute')
every(1.hour, 'run.me.every.hour')

every(1.day, 'run.me.at.midnight', :at => '00:00')