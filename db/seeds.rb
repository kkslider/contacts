Employee.create!(name: "Manager Jake", email: "manager1@test.com", phone: "111-111-1111")
Employee.create!(name: "Manager Ross", email: "manager2@test.com", phone: "121-121-1111")
Employee.create!(manager_id: 1, name: "Jane Doe", email: "staff1@test.com", phone: "222-222-2222")
Employee.create!(manager_id: 1, name: "Bob Doe", email: "staff2@test.com", phone: "333-333-3333")
Employee.create!(manager_id: 1, name: "Louis Doe", email: "staff3@test.com", phone: "444-444-4444")
Employee.create!(manager_id: 1, name: "Karen Doe", email: "staff4@test.com", phone: "555-555-5555")