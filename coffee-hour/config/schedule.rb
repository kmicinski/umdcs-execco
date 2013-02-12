# Use this file to easily define all of your cron jobs.

# Bug the person shopping and send an email to staff regarding who
# should shop.
every :monday, :at => '12:00pm' do
  rake "prepareform:task"
  rake "emailshopper:task"
end

# Make an announcement to gradlist
every :tuesday, :at => '12:00pm' do
  rake "announce:task"
end
