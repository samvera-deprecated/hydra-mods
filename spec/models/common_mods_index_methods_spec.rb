# Need way to find way to stub current_user and RoleMapper in order to run these tests
require 'spec_helper'


require 'hydra/datastream/mods_article'
describe Hydra::Datastream::CommonModsIndexMethods do

  subject { Hydra::Datastream::ModsArticle.from_xml(fixture("mods_article.xml")) }

  describe "extract_person_full_names" do
    it "should return an array of Solr::Field objects for :person_full_name_facet" do
      full_names = subject.extract_person_full_names
      full_names.should be_kind_of Hash
      full_names["person_full_name_facet"].should == ["FAMILY NAME, GIVEN NAMES", "Lacks, Henrietta"]
    end
  end
  describe "extract_person_organizations" do 
    it "should return an array of Solr::Field objects for :mods_organization_facet" do
      orgs = subject.extract_person_organizations
      orgs.should be_kind_of Hash
      orgs["mods_organization_facet"].should be_kind_of Array
      orgs["mods_organization_facet"].length.should == 2
      orgs["mods_organization_facet"].first.should == "FACULTY, UNIVERSITY"
      orgs["mods_organization_facet"].last.should == "Baltimore"
    end
  end
end


