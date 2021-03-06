class Section < ActiveRecord::Base
    belongs_to :page
    has_many  :assets, :as => :hostable, :dependent => :destroy
    after_update :save_assets
    validates_associated :assets
    def new_asset_attributes=(asset_attributes)
      asset_attributes.each do |attributes|
          assets.build(attributes)
      end
    end

    def existing_asset_attributes=(asset_attributes)
        assets.reject(&:new_record?).each do |asset|
            attributes = asset_attributes[asset.id.to_s]
            if attributes
                asset.attributes = attributes
                        else
                assets.delete(asset)
            end
        end
    end
    def  save_assets
        assets.each { |s| s.save false }
    end
end
