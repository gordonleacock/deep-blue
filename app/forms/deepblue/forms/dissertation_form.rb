module Deepblue
  module Forms
    class DissertationForm < Hyrax::Forms::WorkForm

      self.terms += [ :depositor_email, :identifier_orcid, :description_provenance, :thesis_degree_name, :thesis_degree_discipline, :thesis_degree_grantor, :contributor_advisor, :contributor_committee_member  ]
    end
  end
end