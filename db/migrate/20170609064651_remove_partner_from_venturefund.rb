class RemovePartnerFromVenturefund < ActiveRecord::Migration[5.0]
  def change
    remove_column :venturefunds, :Partner, :string
  end
end
