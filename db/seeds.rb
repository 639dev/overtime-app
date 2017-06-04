@user = User.create!(email: "test@test.com" ,
  password: "stfstf" ,
  password_confirmation: "stfstf" ,
  first_name: "john" ,
  last_name: "mac",
  phone: "1312948956")

puts '1 user created'

AdminUser.create!(email: "admin@admin.com" ,
  password: "stfstf" ,
  password_confirmation: "stfstf" ,
  first_name: "tagreed" ,
  last_name: "saeed",
  phone: "1312948956")

puts '1 admin user created'

100.times do |post|
  Post.create!(date: Date.yesterday, rationale: "#{post} rationale content",user_id: @user.id,overtime_request: 2.5)
end

puts "100 post have been created"

100.times do |audit|
  AuditLog.create!(user_id: @user.id)
end

puts "100 audit logs have been created"