require 'rails_helper'

RSpec.describe Supplier, type: :model do
 # pending "add some examples to (or delete) #{__FILE__}"

  before(:each) do
    Supplier.create({name:"AMG"}).account = Account.create({account_number:"1234567!"})
    Account.first.account_history = AccountHistory.create({credit_rating:12})

  end

  it 'Supplier has three record' do
     expect(Supplier.count).to eq(1)
  end

  it 'account has three record' do
    expect(Account.count).to eq(1)
  end

  it 'each Supplier has one account' do
     expect(Supplier.find(1).id).to eq(Supplier.find(1).account.supplier_id)
  end

  it 'through Supplier --> account_history' do

     expect(Supplier.first.account_history.credit_rating).to  eq(12)

  end

end
