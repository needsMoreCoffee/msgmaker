#!/usr/bin/ruby
def ask
  puts " what is the email address to test"
  email = gets.chomp

  puts "Subject line"
  subject = gets.chomp

  puts "Enter the message body"
  body = gets.chomp
  
  # hashes here dictionary .
  return {email: email, subject: subject, body: body}
end

def run(count)
  info = ask()
start_count = count
  while count > 0
    #calling to send
  %x{echo "#{info[:body]}" | mail -s #{info[:subject]} #{info[:email]} }
    count -= 1
    sleep (0.3)
  end
  puts "Sent #{start_count} messages." 
end

#  ^ Define stuff ^
#  v call stuff  v
puts "How many times to send this test"
count = gets.chomp.to_i

run(count)