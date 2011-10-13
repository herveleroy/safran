class Article < ActiveRecord::Base
  
  acts_as_taggable_on :general, :couleur, :matiere, :dimension
  
  define_index do
      indexes description
      indexes description_etendue
      indexes fabricant
      indexes distributeur
      
      has taggings.tag.id, :as => :tags, :facet => true
      has taggings.id, :as => :taggings, :facet => true
      # has fabricant, :facet => true
      has "CRC32(fabricant)", :type => :integer, :as => :fabricant
      has prix_unitaire
      
    end
    
  
    
end
