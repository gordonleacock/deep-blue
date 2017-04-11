# Generated via
#  `rails generate hyrax:work Dissertation`
module Hyrax
  class DissertationForm < Hyrax::Forms::WorkForm
    self.model_class = ::Dissertation
    self.terms += [:resource_type]
    self.terms += [ :depositor_email, :identifier_orcid, :description_provenance, :thesis_degree_name, :thesis_degree_discipline, :thesis_degree_grantor, :contributor_advisor, :contributor_committee_member ]
  end
end
