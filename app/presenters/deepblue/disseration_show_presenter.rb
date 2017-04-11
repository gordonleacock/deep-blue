# disseration_show_presenter.rb
module Deepblue
  class DissertationShowPresenter
    include Hyrax::ModelProxy
    include Hyrax::PresentsAttributes
    attr_accessor :solr_document, :current_ability, :request

    # delegate fields from Hyrax::Works::Metadata to solr_document
    delegate :depositor_email, :identifier_orcid, :description_provenance, :thesis_degree_name, :thesis_degree_discipline, :thesis_degree_grantor, :contributor_advisor, :contributor_committee_member to: :solr_document
  end
end