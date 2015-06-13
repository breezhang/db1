require 'rails_helper'

RSpec.describe Physician, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do

    Physician.create({name: "bree"}).patients << Patient.create([
                                                                    {name: "cat1"},
                                                                    {name: "cat1"}
                                                                ])

    Patient.create({name: "kong"}).physicians << Physician.create([
                                                                      {name: "mike"},
                                                                      {name: "jeff"},
                                                                      {name: "lisa"}
                                                                  ])

  end

  it 'check bree has two  patients' do
    expect(Physician.find_by({name: "bree"}).patients.count).to eq(2)
  end

  it 'check kong has two Physician ' do
    expect(Patient.find_by({name: "kong"}).physicians.count).to eq(3)
  end

end
