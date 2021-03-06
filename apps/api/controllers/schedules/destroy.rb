module Api
  module Controllers
    module Schedules
      class Destroy
        include Api::Action
        include JSONAPI::Hanami::Action

        params do
          required(:id).filled(:str?)
        end

        def call(params)
          repo = ScheduleRepository.new
          schedule = repo.delete(params[:id])

          self.data = schedule
          self.status = 200
        end
      end
    end
  end
end
