# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'validates that author is a string' do
    book = Book.new(title: "test", author:"awe")
    expect(book).to be_valid
  end


  it 'validates that price is a number' do
    book = Book.new(title: "test", price: 1.12)
    expect(book).to be_valid

    book.price = "string_value"
    expect(book).not_to be_valid

    book.price = nil
    expect(book).not_to be_valid
  end

  it 'validates that date is a Date' do
    book = Book.new(title: "test", published_date: '2021-09-05')
    expect(book).to be_valid
  end
end