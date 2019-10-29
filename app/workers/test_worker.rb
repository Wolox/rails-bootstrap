class TestWorker
  include Sidekiq::Worker

  def perform(name, count)
    TestModel.create!(content: name, something: count)
  end
end
