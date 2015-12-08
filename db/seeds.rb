User.create!([
  {email: "michael.g224@gmail.com", encrypted_password: "$2a$10$iqX6WxV480ibqhNPzz5GkOp1sAgxoVGHUShE1ovdt5fqVukMHzNuS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-12-08 10:00:40", last_sign_in_at: "2015-12-08 10:00:40", current_sign_in_ip: "73.151.146.77", last_sign_in_ip: "73.151.146.77", plan_id: nil}
])
Contact.create!([
  {name: "test#seed", email: "test@seed.com", comments: "the body of the seed test"}
])
Plan.create!([
  {name: "basic", price: "0.0"},
  {name: "pro", price: "5.0"}
])
