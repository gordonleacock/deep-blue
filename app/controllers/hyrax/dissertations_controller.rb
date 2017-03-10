# Generated via
#  `rails generate hyrax:work Dissertation`

module Hyrax
  class DissertationsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = Dissertation
  end
end
