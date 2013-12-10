Employee.create!(name: "Manager Jake", email: "manager1@test.com", phone: "111-111-1111")
Employee.create!(manager_id: 1, name: "Staff Bob", email: "staff1@test.com", phone: "222-222-2222")
Employee.create!(manager_id: 1, name: "Staff Jessica", email: "staff2@test.com", phone: "333-333-3333")