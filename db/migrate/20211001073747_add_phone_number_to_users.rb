class AddPhoneNumberToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phonenumber, :integer
  end
end
