module Deepblue
  module Forms
    class WorkForm < Hyrax::Forms::WorkForm

      self.terms += [ :depositor_email, :identifier_orcid, :description_provenance ]
    end
  end
end