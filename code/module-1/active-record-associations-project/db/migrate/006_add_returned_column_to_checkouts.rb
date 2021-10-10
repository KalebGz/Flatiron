class AddReturnedColumnToCheckouts < ActiveRecord::Migration[5.2]
    def change
        add_column :checkouts, :returned?, :boolean
    end
end