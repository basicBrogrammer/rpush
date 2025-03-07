module Rpush
  module Client
    module ActiveRecord
      module Fcm
        class Notification < Rpush::Client::ActiveRecord::Notification
          include Rpush::Client::ActiveModel::Fcm::Notification

          def data
            multi_json_load(read_attribute(:data)).transform_values(&:to_s) if read_attribute(:data)
          end
        end
      end
    end
  end
end
