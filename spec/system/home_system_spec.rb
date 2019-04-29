require 'rails_helper'

RSpec.describe 'HomeController', type: :system do
  before do
    driven_by :rack_test
  end

  describe '#index' do
    it 'Renders Hello World' do
      visit '/'

      expect(page).to have_text('Hello World')
    end
  end
end
