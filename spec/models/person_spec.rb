require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) { Person.new(first_name: 'John', last_name: 'Smith') }

  context 'ActiveRecord associations' do
    it { expect(person).to have_attributes(:first_name => String) }
    it { expect(person).to have_attributes(:last_name => String) }
  end
end
