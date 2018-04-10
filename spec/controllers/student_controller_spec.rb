require 'rails_helper'

describe StudentsController do
  let(:subject) { described_class }

  describe '#create' do
    let!(:student) { create(:student) }
    let(:params) {{ student_id: student.id }}
    it 'should create a new record' do
      subject { post :create, params }
      expect(response).to be_success
    end
  end

end
