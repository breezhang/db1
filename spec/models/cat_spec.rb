require 'rails_helper'

RSpec.describe Cat, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'make  STI through type select class  ' do

   expect(Cat.create({name:"dah"}).type).to match /Cat/
  end
end
