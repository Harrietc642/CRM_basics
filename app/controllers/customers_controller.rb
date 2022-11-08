class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order("full_name ASC")
  end

  def missing_email
    @customers = Customer.where.not("email_address like ?", "%@%")
  end
end
