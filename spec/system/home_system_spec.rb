require 'rails_helper'

RSpec.describe 'HomeController', type: :system do
  before do
    driven_by :selenium, using: :chrome, screen_size: [1400, 1400],
      options: {
        desired_capabilities: {
          chromeOptions: {
            args: %w[headless disable-gpu]
          },
        },
      }
  end

  describe '#index' do
    it 'Renders Hello World' do
      visit '/'

      expect(page).to have_text('Hello World')
    end
  end
end
