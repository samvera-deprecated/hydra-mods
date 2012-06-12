module Hydra

  module Datastream
    autoload :CommonModsIndexMethods, 'hydra/datastream/common_mods_index_methods'
    autoload :ModsArticle, 'hydra/datastream/mods_article'
    autoload :ModsBasic, 'hydra/datastream/mods_basic'
    autoload :ModsGenericContent, 'hydra/datastream/mods_generic_content'
    autoload :ModsDataset, 'hydra/datastream/mods_dataset'
    autoload :ModsImage, 'hydra/datastream/mods_image'
  end
  # DEPRECATED STUFF
  #module ModelMixins
  #  autoload :CommonModsIndexMethods, 'hydra/model_mixins/mods_object'
  #end
  require 'hydra/model_mixins/mods_object'
  require 'uva/mods_index_methods'

  autoload :ModsArticle, 'hydra/mods_article'
  autoload :ModsDataset, 'hydra/mods_article'
  autoload :ModsGenericContent, 'hydra/mods_article'
  autoload :ModsImage, 'hydra/mods_article'
end
