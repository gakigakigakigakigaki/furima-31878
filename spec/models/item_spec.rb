require 'rails_helper'

describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '出品新規登録' do
    context '出品登録がうまくいくとき' do
      it "product_nameとprice、category_idとstatus_id,descriptionとprefecture_id,days_to_ship_idとdelivery_fee_id,imageが存在すれば登録できる" do
        expect(@item).to be_valid
      end
      it "priceが半角数字で登録できる" do
        
        @item.price = "4000"
        expect(@item).to be_valid
      end
      it "priceが¥300以上であれば登録できる" do
        @item.price = "300"
        expect(@item).to be_valid
      end
    end

    context '出品登録がうまくいかないとき' do
      it "imageが空だと登録できない" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it "product_nameが空だと登録できない" do
        @item.product_name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Product name can't be blank")
      end
      it "priceが空では登録できない" do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it "priceが¥299以下では登録できない" do
      
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it "priceが¥10,000,000以上では登録できない" do
        @item.price = 10,000,000
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is invalid")
      end
      it "category_idが空では登録できない" do
        @item.category_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it "status_idが空では登録できない" do
        @item.status_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Status can't be blank")
      end
      it "descriptionが空では登録できない" do
        @item.description = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Description can't be blank")
      end
      it "prefecture_idが空では登録できない" do
        @item.prefecture_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end
      it "days_to_ship_idが空では登録できない" do
        @item.days_to_ship_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Days to ship can't be blank")
      end
      it "delivery_fee_idが空では登録できない" do
        @item.delivery_fee_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery fee can't be blank")
      end
    end
  end
end

