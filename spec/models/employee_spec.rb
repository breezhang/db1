require 'rails_helper'

RSpec.describe Employee, type: :model do
 # pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do
    Employee.create({name:"xkit"}).pictures << Picture.create([
                                                                  {name:"sexone"},
                                                                  {name:"sextwo"},
                                                                  {name:"sexthree"}
                                                              ])

    Product.create({name:"fuckm"}).pictures << Picture.create([
                                                                  {name:"head"},
                                                                  {name:"body"},
                                                              ])
  end

  it 'check employee has three pics' do
     expect(Employee.first.pictures.count).to eq(3)
  end

  it 'check product have two pics' do
    expect(Product.first.pictures.count).to eq(2)
  end
end
