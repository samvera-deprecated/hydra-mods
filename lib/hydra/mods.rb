module Hydra

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
