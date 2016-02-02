json.array!(@cashiers) do |cashier|
  json.extract! cashier, :id, :name, :username, :startdate, :enddate, :dob, :age, :email, :phone, :salaryperhour
  json.url cashier_url(cashier, format: :json)
end
