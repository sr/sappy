require 'sappy/responses/auth'
require 'sappy/responses/account_info'
require 'sappy/responses/summary_statistics'
require 'sappy/responses/monitors'
require 'sappy/responses/add_monitor'
require 'sappy/responses/edit_monitor'
require 'sappy/responses/remove_monitor'
require 'sappy/responses/enable_monitor'
require 'sappy/responses/disable_monitor'
require 'sappy/responses/daily_statistics'
require 'sappy/responses/monthly_statistics'
require 'sappy/responses/annual_statistics'

module Sappy
  module Responses
    MAP = {
      "auth" => Auth,
      "accountinfo" => AccountInfo,
      "summarystatistics" => SummaryStatistics,
      "monitors" => Monitors,
      "addmonitor" => AddMonitor,
      "editmonitor" => EditMonitor,
      "removemonitor" => RemoveMonitor,
      "enablemonitor" => EnableMonitor,
      "disablemonitor" => DisableMonitor,
      "dailystatistics" => DailyStatistics,
      "monthlystatistics" => MonthlyStatistics,
      "annualstatistics" => AnnualStatistics
    }

    def self.for(action)
      MAP[action] || raise(ArgumentError, "Couldn't find a Response class to parse a #{action.inspect} result")
    end
  end
end
