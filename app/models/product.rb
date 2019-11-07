class Product < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :category
    has_many :comments
    belongs_to :status
    mount_uploader :picture, PictureUploader

    def self.search(search)
        if search
            where(["product_name LIKE ? OR brand LIKE ?","%#{search}%","%#{search}%"])
        else
            all
        end
    end
end
