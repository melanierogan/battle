require './app.rb'
require 'spec_helper'

describe MyApp do
  describe 'the homepage', type: :feature do
    it 'should display particular message on homepage' do
      visit '/'
      expect(page).to have_content 'Testing infrastructure working!'
    end
  end
end
