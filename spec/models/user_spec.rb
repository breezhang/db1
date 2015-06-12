require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do

    User.create({name: "bree", age: 21}).blogs << Blog.create([
                                                                  {context: "RubyMine creates a temporary run/debug configuration for Zeus server. Later you can change this run/debug configuration as required, save it as permanent, and use it to launch the server.
If both Zeus and Spork DRb servers are running simultaneously, it is Zeus that gets priority.
If you are going to run RSpec tests under Zeus server, make sure to use Zeus version 0.13.4.pre2, or higher.", tag: "C", pub_date: Time.local(2014, 1, 1)},
                                                                  {context: "RubyMine creates a temporary run/debug configuration for Zeus server. Later you can change this run/debug configuration as required, save it as permanent, and use it to launch the server.
If both Zeus and Spork DRb servers are running simultaneously, it is Zeus that gets priority.
If you are going to run RSpec tests under Zeus server, make sure to use Zeus version 0.13.4.pre2, or higher.", tag: "ruby", pub_date: Time.local(2014, 1, 2)},

                                                              ])
  end

  it "check one record " do
    expect(User.count).to eq(1)
  end

  it 'user has two blogs' do

    expect(Blog.count).to eq(2)

  end

  it 'check blogs has about for ruby' do

     rubyblog =User.all.collect {|e| e.blogs.find_by({tag:"ruby"})}.first

     expect(rubyblog.tag).to match /ruby/

  end


end
