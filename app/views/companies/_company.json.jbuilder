json.extract! company, :id, :company_name, :register_no, :address, :city, :state, :postcode, :phone_no, :fax, :email, :website, :created_at, :updated_at
json.url company_url(company, format: :json)
