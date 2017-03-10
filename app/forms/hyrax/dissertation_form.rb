# Generated via
#  `rails generate hyrax:work Dissertation`
module Hyrax
  class DissertationForm < Hyrax::Forms::WorkForm
    self.model_class = ::Dissertation
    self.terms += [:resource_type]
  end
end
