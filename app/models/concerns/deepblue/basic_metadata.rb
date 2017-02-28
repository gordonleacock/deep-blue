module Deepblue
  module BasicMetadata
    extend ActiveSupport::Concern

    included do
      # Email addresses can be given using mailto: URIs.
      property :depositor_email, predicate: ::RDF::Vocab::FOAF.mbox do |index|
        index.as :stored_searchable
      end
      
      #Orcid ids as URIs, e.g. orcid.org/0000-0002-7207-6683
      property :identifier_orcid, predicate: ::RDF::Vocab::Identifiers.orcid do |index|
        index.as :stored_searchable
      end

      property :description_provenance, predicate: ::RDF::Vocab::DC.provenance do |index|
        index.type :text
        index.as :stored_searchable
      end
      
    end
  end
end