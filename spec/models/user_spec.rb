require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

  let(:params){{name:"ゆーいち"}}

    it "年齢1：ユーザーの名前が「〜ちゃん」と取得できる事" do 
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "ゆーいちちゃん" 
    end
    it "年齢15：ユーザーの名前が「〜君」と取得できる事" do 
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "ゆーいち君" 
    end
    it "年齢20：ユーザーの名前が「〜さん」と取得できる事" do 
      params.merge!(age: 20)
      user = User.new(params)
      expect(user.disp_name).to eq "ゆーいちさん" 
    end
    it "年齢−1：「不正な値です」と取得できる事" do 
      params.merge!(age: -1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です" 
    end
  end
end
