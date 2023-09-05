require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid - only title' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid input - all attributes' do
    visit new_book_path
    fill_in "book[title]", with: 'TestCase'
    fill_in "book[price]", with: 3
    fill_in "book[author]", with: 'TheAuthor'
    fill_in "book[published_date]", with: ''

    click_on 'Create Book'
    # book = Book.last
    # visit book_path(book)
    expect(page).to have_content('TestCase')
  end


  scenario 'invalid inputs - no title' do
    visit new_book_path
    fill_in "book[author]", with: 'author'
    expect { click_on 'Create Book' }.not_to change { Book.count }
  end
end

RSpec.describe 'Update a book', type: :feature do
  let!(:book) { Book.create(title: 'Original Title', author: 'Author', price: 19.99, published_date: Date.today) } 
  scenario 'Check Update Notice Flag' do
    visit edit_book_path(book)
    fill_in "book[title]", with: 'harry potter'
    click_on 'Update Book'
    expect(page).to have_content('Your book has been updated.')
  end
end