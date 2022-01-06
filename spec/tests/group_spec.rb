require 'rails_helper'
RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.create(name: 'John Doe', email: 'JOhn@gmail.com', password: 'qwerty')
  end

  it 'is valid with all attributes given' do
    @group = @user.groups.create(name: 'Test Group', icon: 'icon')
    expect(@group).to be_valid
  end

  it 'is invalid without an icon' do
    @group = @user.groups.create(name: 'Test Group')
    expect(@group).to_not be_valid
  end

  it 'must be associated with a user' do
    @group = @user.groups.create(name: 'Test Group', icon: 'icon')
    expect(@group.user).to eq @user
  end

  it 'is invalid without a user' do
    @group = Group.create(name: 'Test Group', icon: 'icon')
    expect(@group).to_not be_valid
  end

  it 'is invalid without a name' do
    @group = @user.groups.create(icon: 'icon')
    expect(@group).to_not be_valid
  end

  it 'has a name' do
    @group = @user.groups.create(name: 'Test Group', icon: 'icon')
    expect(@group.name).to eq 'Test Group'
  end
end
