use Mix.Config

config :delta,
  config_sources: [
    {:system, "DELTA_JSON"}
  ]

config :sasl, errlog_type: :error

config :logger,
  handle_sasl_reports: true,
  level: :info,
  backends: [:console]

config :logger, :console,
  level: :debug,
  format: "$dateT$time [$level]$levelpad $message\n"

config :ehmon, :report_mf, {:ehmon, :info_report}
