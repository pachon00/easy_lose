require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :age => 1,
      :weight => 1,
      :height => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_age[name=?]", "user[age]"

      assert_select "input#user_weight[name=?]", "user[weight]"

      assert_select "input#user_height[name=?]", "user[height]"
    end
  end
end
