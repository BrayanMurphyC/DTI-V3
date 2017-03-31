class Event < ApplicationRecord
  extend FriendlyId

  acts_as_votable

  has_many :registro_eventos
  has_many :evento_ponente

  friendly_id :title, use: :slugged

  belongs_to :user
  before_save :number_views
  validates :photo, presence: true
  validates :cover, presence: true
  validates :logo, presence: true


  has_attached_file :logo, styles: { :medium => "1200x800#" }
  validates_attachment_content_type :logo, :content_type => /^image\/(png|x-png)$/, :message => 'Solo imagenes png'

  has_attached_file :cover, styles: { :medium => "1200x800#" }
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  has_attached_file :photo, styles: { :medium => "300x200#" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/



  def update_view_count
    self.update(view_count: self.view_count + 1)
  end


  def score
    self.get_upvotes.size
  end


  private

  def number_views
    self.view_count ||= 0
  end

end
