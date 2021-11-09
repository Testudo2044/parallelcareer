class AddIntroducedUserToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :introduced_user, foreign_key: true
  end
end
