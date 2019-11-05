class Product < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments
    mount_uploader :picture, PictureUploader

    def self.search(search)
        if search
            where(["product_name LIKE ? OR brand LIKE ?","%#{search}%","%#{search}%"])
        else
            all
        end
    end
end
