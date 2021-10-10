class User < ActiveRecord::Base
    has_many :checkouts
    has_many :books, through: :checkouts

    def check_out_book(book, due_date)
        Checkout.create(user: self, book: book, returned?: false)
    end
end