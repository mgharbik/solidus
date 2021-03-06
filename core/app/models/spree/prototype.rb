module Spree
  class Prototype < Spree::Base
    has_and_belongs_to_many :properties, join_table: :spree_properties_prototypes
    has_and_belongs_to_many :option_types, join_table: :spree_option_types_prototypes

    has_many :prototype_taxons, dependent: :destroy
    has_many :taxons, through: :prototype_taxons

    validates :name, presence: true
  end
end
