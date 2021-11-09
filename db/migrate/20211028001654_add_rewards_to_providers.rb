class AddRewardsToProviders < ActiveRecord::Migration[6.1]
  def change
    add_column :providers, :reward, :string
  end
end
