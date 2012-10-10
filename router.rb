require_relative 'page_generator'

if ARGV.empty?
  puts "Usage: ruby router.rb [action]"
else
  page_generator = WebPageGenerator.new
  action = ARGV[0]

  if action == 'index'
    page_generator.generate_all_students
  elsif action == 'random'
    page_generator.generate_random_student
  else
    puts "Unknown action!  Try again."
  end
end