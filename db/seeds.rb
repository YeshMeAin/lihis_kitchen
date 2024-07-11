# Development seeds

if !Rails.env.development?
  puts "Seeds only available in development environment. current environment: #{ENV['RAILS_ENV']}"
  exit
end


AdminUser.find_or_create_by!(email: 'yonatan@gmail.com') do |admin_user|
  admin_user.password = 'password'
  admin_user.password_confirmation = 'password'
end 
