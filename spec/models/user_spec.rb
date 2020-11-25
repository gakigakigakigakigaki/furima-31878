require 'rails_helper'

describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nicknameとemail、passwordとpassword_confirmation,first_nameとlast_name、first_name_kanaとlast_name_kana, birthdayが存在すれば登録できる" do
      end
      
      it "passwordは6文字以上半角英数混合であれば登録できる" do
      end
      
    end

    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
      end
      it "emailに＠がないと登録できない" do
      end
      it "emailが空では登録できない" do
      end
      it "重複したemailが存在する場合登録できない" do
      end
      it "passwordが空では登録できない" do
      end
      it "passwordが５文字以下であれば登録できない" do
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
      end
      it "first_nameが空では登録できない"
      end
      it "last_nameが空では登録できない"
      end
      it "first_name_kanaが空では登録できない"
      end
      it "last_name_kanaが空では登録できない"
      end
      it "birthdayが空では登録できない"
      end
    end
  end
end