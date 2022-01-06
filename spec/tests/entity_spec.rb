require 'rails_helper'
RSpec.describe Entity, type: :model do
  before(:each) do
    @user = User.create(name: 'John Doe', email: 'JOhn@gmail.com', password: 'qwerty')
  end

  it 'is valid with all attributes given' do
    @entity = @user.entities.create(name: 'Test entity', amount: 7)
    expect(@entity).to be_valid
  end

  it 'is invalid without an amount' do
    @entity = @user.entities.create(name: 'Test entity')
    expect(@entity).to_not be_valid
  end

  it 'must be associated with a user' do
    @entity = @user.entities.create(name: 'Test entity', amount: 20)
    expect(@entity.user).to eq @user
  end

  it 'is invalid without a user' do
    @entity = Entity.create(name: 'Test entity', amount: 100)
    expect(@entity).to_not be_valid
  end

  it 'is invalid without a name' do
    @entity = @user.entities.create(amount: 60)
    expect(@entity).to_not be_valid
  end

  it 'has an amount' do
    @entity = @user.entities.create(name: 'Test entity', amount: 30)
    expect(@entity.amount).to eq 30
  end

  it 'has a name' do
    @entity = @user.entities.create(name: 'Test entity', amount: 30)
    expect(@entity.name).to eq 'Test entity'
  end
end
