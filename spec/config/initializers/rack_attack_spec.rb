# require 'rails_helper'
#
# describe Rack::Attack do
#   include Rack::Test::Methods
#   let(:service_unavailable) { Rack::Utils::SYMBOL_TO_STATUS_CODE[:service_unavailable] }
#   let(:app) { Rails.application }
#
#   describe 'Blocklist' do
#     let(:limit) { 25 }
#     context 'When the number of requests by IP is lower than the limit' do
#       it 'does not change the request status' do
#         limit.times do
#           get '/api/v1/', {}, 'REMOTE_ADDR' => '1.2.3.36'
#           expect(last_response.status).to_not eq(service_unavailable)
#         end
#       end
#     end
#
#     context 'When the number of requests by IP is higher than the limit' do
#       it 'changes the request status to 503' do
#         (limit * 2).times do |iteration_number|
#           get '/api/v1/', {}, 'REMOTE_ADDR' => '1.2.3.12'
#           expect(last_response.status).to eq(service_unavailable) if iteration_number > limit
#         end
#       end
#     end
#
#     context 'When url request includes php' do
#       it 'changes the request status to 503 when send more than one request' do
#         get '/trash.php', {}, 'REMOTE_ADDR' => '1.2.5.18'
#         expect(last_response.status).to_not eq(service_unavailable)
#         get '/trash.php', {}, 'REMOTE_ADDR' => '1.2.5.18'
#         expect(last_response.status).to eq(service_unavailable)
#       end
#     end
#   end
#
#   describe 'Throttle' do
#     let(:limit) { 5 }
#     context 'When the number of requests to user sign in by IP is lower than the limit' do
#       it 'does not change the request status' do
#         limit.times do |iteration_number|
#           post '/api/v1/users/sign_in', {
#             session: { email: "example1#{iteration_number}@gmail.com", password: '12345678' }
#           }, 'REMOTE_ADDR' => '1.2.3.14'
#           expect(last_response.status).to_not eq(service_unavailable)
#         end
#       end
#     end
#
#     context 'When the number of requests to user sign in by IP is higher than the limit' do
#       it 'changes the request status to 503' do
#         (limit * 2).times do |iteration_number|
#           post '/api/v1/users/sign_in', {
#             session: { email: "example2#{iteration_number}@gmail.com", password: '12345678' }
#           }, 'REMOTE_ADDR' => '1.2.3.15'
#           expect(last_response.status).to eq(service_unavailable) if iteration_number > limit
#         end
#       end
#     end
#
#     context 'When the number of requests to admin login by IP is lower than the limit' do
#       it 'does not change the request status' do
#         limit.times do |iteration_number|
#           post '/admin/login', { email: "example3#{iteration_number}@gmail.com" },
#                'REMOTE_ADDR' => '1.2.3.16'
#           expect(last_response.status).to_not eq(service_unavailable)
#         end
#       end
#     end
#
#     context 'When the number of requests to admin login by IP is higher than the limit' do
#       it 'changes the request status to 503' do
#         (limit * 2).times do |iteration_number|
#           post '/admin/login', { email: "example4#{iteration_number}@gmail.com" },
#                'REMOTE_ADDR' => '1.2.3.17'
#           expect(last_response.status).to eq(service_unavailable) if iteration_number > limit
#         end
#       end
#     end
#
#     context 'When the number of requests to user sign in by email is lower than the limit' do
#       it 'does not change the request status' do
#         limit.times do |iteration_number|
#           post '/api/v1/users/sign_in', { session: { email: 'example7@gmail.com' } },
#                'REMOTE_ADDR' => "#{iteration_number}.2.6.18"
#           expect(last_response.status).to_not eq(service_unavailable)
#         end
#       end
#     end
#
#     context 'When the number of requests to user sign in by email is higher than the limit' do
#       it 'changes the request status to 503' do
#         (limit * 2).times do |iteration_number|
#           post '/api/v1/users/sign_in', { session: { email: 'example8@gmail.com' } },
#                'REMOTE_ADDR' => "#{iteration_number}.2.7.19"
#           expect(last_response.status).to eq(service_unavailable) if iteration_number > limit
#         end
#       end
#     end
#
#     context 'When the number of requests to admin login by email is lower than the limit' do
#       it 'does not change the request status' do
#         limit.times do |iteration_number|
#           post '/admin/login', { email: 'example5@gmail.com' },
#                'REMOTE_ADDR' => "#{iteration_number}.2.4.11"
#           expect(last_response.status).to_not eq(service_unavailable)
#         end
#       end
#     end
#
#     context 'When the number of requests to admin login by email is higher than the limit' do
#       it 'changes the request status to 503' do
#         (limit * 2).times do |iteration_number|
#           post '/admin/login', { email: 'example6@gmail.com' },
#                'REMOTE_ADDR' => "#{iteration_number}.2.5.12"
#           expect(last_response.status).to eq(service_unavailable) if iteration_number > limit
#         end
#       end
#     end
#   end
# end
