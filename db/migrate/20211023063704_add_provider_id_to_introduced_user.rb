class AddProviderIdToIntroducedUser < ActiveRecord::Migration[6.1]
  def change
     add_column :introduced_users, :provider_id, :integer
  end
end
