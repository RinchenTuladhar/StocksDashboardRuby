class UserType < ApplicationRecord
  TYPE_ADMIN = "Admin"
  TYPE_CUSTOMER = "Customer"

  def self.admin
    find_by_name(TYPE_ADMIN)
  end

  def self.customer
    find_by_name(TYPE_CUSTOMER)
  end
end
