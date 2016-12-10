class Task < ApplicationRecord

  # Validations
  validates( :user_id, presence: true )
	validates( :content, presence: true )

  # Relationships
  belongs_to( :user )

  auto_html_for :content do
    html_escape
    image
    youtube(width: '100%', height: 250 )
    link target: '_blank', rel: 'nofollow'
    simple_format
  end

end
