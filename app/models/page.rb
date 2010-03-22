class Page < ActiveRecord::Base
    acts_as_tree :order => :position
    acts_as_list :scope => :parent_id 
    has_many :sections, :dependent => :destroy
    after_update :save_sections
    validates_associated :sections


    def new_section_attributes=(section_attributes)
      section_attributes.each do |attributes|
          sections.build(attributes)
      end
    end

    def existing_section_attributes=(section_attributes)
        sections.reject(&:new_record?).each do |section|
            attributes = section_attributes[section.id.to_s]
            if attributes
                section.attributes = attributes
                        else
                sections.delete(section)
            end
        end
    end
    def  save_sections
        sections.each { |s| s.save false }
    end
    def self.visible_pages(visiblity=true)
        find_all_by_public(visiblity, :order => :position)
    end
 
end
