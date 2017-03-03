module Deepblue
  class WorkShowPresenter
    include Hyrax::ModelProxy
    include Hyrax::PresentsAttributes
    attr_accessor :solr_document, :current_ability, :request

    # delegate fields from Hyrax::Works::Metadata to solr_document
    delegate :depositor_email, :identifier_orcid, :description_provenance, to: :solr_document
  end
end
