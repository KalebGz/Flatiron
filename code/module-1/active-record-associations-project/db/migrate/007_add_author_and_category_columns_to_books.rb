class AddAuthorAndCategoryColumnsToBooks < ActiveRecord::Migration[5.2]
    def change
        add_column :books, :author_id, :integer
        add_column :books, :category_id, :integer
    end
end