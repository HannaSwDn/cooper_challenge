Shoulda::Matchers.configure do |config|
    config.integrate do |with|
        with.test_framework :rspec
        with.library :rails
    end
end

Rspec.configure do |config|
    config.include(Shoulda::Mathcers::ActiveRecord, type: :model)
end