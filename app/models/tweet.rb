class Tweet < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?
    # The set_defaults will only work if the object is new
    
    validates :title, presence: true

    after_create_commit { broadcast_prepend_to 'tweets' }
    after_update_commit { broadcast_replace_to 'tweets' }
    after_destroy_commit { broadcast_remove_to 'tweets' }

    def set_defaults
        self.likesCount = 0
        self.retweetsCount = 0
    end
end
