class AddIntroducedUserToProviders < ActiveRecord::Migration[6.1]
  def change
    add_reference :providers, :introduced_user, foreign_key: true
  end
end
