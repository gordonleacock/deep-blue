# models/concerns/deepblue/dissertation_metadata.rb
module Deepblue
  module DissertationMetadata
    extend ActiveSupport::Concern

    included do
      # uniqname or emplid of student
      property :depositor_email, predicate: ::RDF::Vocab::FOAF.accountName do |index|
        index.as :stored_searchable
      end
      # Thesis name
      property :thesis_degree_name, predicate: ::RDF::URI.new('http://id.loc.gov/ontologies/bibframe/Dissertation') do |index|
        index.type :text
        index.as :stored_searchable
      end
      # Thesis subject
      property :thesis_degree_discipline, predicate: ::RDF::Vocab::MODS.subject do |index|
        index.type :text
        index.as :stored_searchable
      end
      # Advisor
      property :contributor_advisor, predicate: ::RDF::URI.new('http://vivoweb.org/ontology/core#GraduateAdvisingRelationship') do |index|
        index.type :text
        index.as :stored_searchable
      end
      # Committee member
      property :contributor_committee_member, predicate: ::RDF::URI.new('http://vivoweb.org/ontology/core#Committee') do |index|
        index.type :text
        index.as :stored_searchable
      end   
      # Thesis degree grantor
      property :thesis_degree_grantor, predicate: ::RDF::URI.new('http://id.loc.gov/ontologies/bibframe/grantingInstitution') do |index|
        index.type :text
        index.as :stored_searchable
      end
    end

  end
end

