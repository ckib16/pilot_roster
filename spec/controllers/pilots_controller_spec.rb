# require 'rails_helper'
#
# describe PilotsController do
#   describe 'GET #index' do
#     it 'populates an array of all pilots' do
#       location = create(:location)
#       smith = create(:pilot, name: 'Smith', location: location)
#       jones = create(:pilot, name: 'Jones', location: location)
#       get :index
#       expect(assigns(:pilots)).to match_array([smith, jones])
#     end
#
#     it 'renders the :index template' do
#       get :index
#       expect(response).to render_template :index
#     end
#   end
#
#   describe 'GET #show' do
#     it 'assigns the requested pilot to @pilot' do
#       location = create(:location)
#       pilot = create(:pilot, location: location)
#       get :show, id: pilot, location_id: location.id
#       expect(assigns(:location)).to eq pilot.location
#     end
#
#     it 'renders the :show template for the pilot' do
#       location = create(:location)
#       pilot = create(:pilot, location: location)
#       get :show, id: pilot, location_id: location.id
#       expect(response).to render_template :show
#     end
#   end
#
#   describe 'GET #new' do
#     it 'assigns a new Pilot to @pilot' do
#       location = create(:location)
#       pilot = create(:pilot, location: location)
#       get :new, id: pilot, location_id: location.id
#       expect(assigns(:location)).to eq pilot.location
#     end
#     it 'renders the :new template' do
#       location = create(:location)
#       pilot = create(:pilot, location: location)
#       get :new, id: pilot, location_id: location.id
#       expect(response).to render_template :new
#     end
#   end
#
#   describe 'GET #edit' do
#     it 'assigned the requested pilot to @pilot' do
#       location = create(:location)
#       pilot = create(:pilot, location: location)
#       get :edit, id: pilot, location_id: location.id
#       expect(assigns(:location)).to eq pilot.location
#     end
#
#     it 'renders the :edit template' do
#       location = create(:location)
#       pilot = create(:pilot, location: location)
#       get :edit, id: pilot, location_id: location.id
#       expect(response).to render_template :edit
#     end
#   end
#
#   describe 'POST #create' do
#     before :each do
#       @pilot = attributes_for(:pilot)
#     end
#     context 'with valid attributes' do
#       it 'saves the new pilot in the database' do
#         expect{
#           post :create, pilot: attributes_for(:pilot)
#         }.to change(Pilot, :count).by(1)
#       end
#       it 'redirects to pilots#show'
#     end
#
#     context 'with invalid attributes' do
#       it 'does not save the new pilot in the database'
#       it 're-renders the :new template'
#     end
#   end
#
#   describe 'PATCH #update' do
#     context 'with valid attributes' do
#       it 'updates the pilot in the database'
#       it 'redirects to the pilot question'
#     end
#
#     context 'with invalid attributes' do
#       it 'does not update the contact'
#       it 're-renders the :edit template'
#     end
#   end
#
#   describe 'DELETE #destroy' do
#     it 'deletes the pilot from the database'
#     it 'redirects to pilots#index'
#   end
# end
