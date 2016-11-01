json.array!(@participants) do |participant|
  json.extract! participant, :id, :name, :gender, :dob, :enrollment_date, :phone, :email, :method_of_contact, :remarks
  json.url participant_url(participant, format: :json)
end
