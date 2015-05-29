json.array!(@pay_others) do |pay_other|
  json.extract! pay_other, :id, :student_name, :admission_number, :form, :stream, :amount, :pay_method, :payment_for
  json.url pay_other_url(pay_other, format: :json)
end
