# -*- encoding : utf-8 -*-
module Deepblue
  module SolrDocumentBehavior
    extend ActiveSupport::Concern
    include Hydra::Works::MimeTypes
    include Hyrax::Permissions::Readable
    include Hyrax::SolrDocument::Export
    include Hyrax::SolrDocument::Characterization

    def depositor_email
      fetch(Solrizer.solr_name('depositor_email'), [])
    end

    def identifier_orcid
      fetch(Solrizer.solr_name('identifier_orcid'), [])
    end
    
    def description_provenance
      fetch(Solrizer.solr_name('description_provenance'), [])
    end

  end
end