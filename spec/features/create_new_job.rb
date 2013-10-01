require 'spec_helper'

describe 'User create new job' do
  before do
    visit new_job_path
  end

  describe 'with blank name' do
    before do
      fill_in 'Name', with: ""
      fill_in 'Number', with: "1233"
      click_button 'Done'
    end

    it "should not create new job without name" do
      expect(page).to have_content("Name can't be blank")
    end
  end


  describe 'with blank number' do
    before do
      fill_in 'Name', with: "My List"
      fill_in 'Number', with: ""
      click_button 'Done'
    end

    it "should not create new job without number" do
      expect(page).to have_content("Number can't be blank")
    end
  end

  describe 'with valid data' do
    before do
      fill_in 'Name', with: "My List"
      fill_in 'Number', with: "1233"
      attach_file('File', 'spec/fixtures/sample.xls')
      click_button 'Done'
    end

    it "should redirect on show page" do
      expect(page).to have_content("Job was successfully created.")
    end
  end
end