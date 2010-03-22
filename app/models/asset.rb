class Asset < ActiveRecord::Base
    belongs_to :hostable, :polymorphic => true

    has_attachment ContentSystem::AttachmentOpts
    validates_as_attachment
end
