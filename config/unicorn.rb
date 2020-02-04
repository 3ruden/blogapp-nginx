rails_root = File.expand_path('../../', __FILE__)

# ワーカー数を指定します。
# コア数と同じにすると良いようです。
worker_processes 4

# Railsアプリケーションのディレクトリを指定します。
working_directory rails_root

# 待ち受けるTCPポートを指定します。
listen "#{rails_root}/tmp/unicorn.sock"

# UnicornのPIDの一時保管場所を指定します。
# 元々Railsには tmp/pids フォルダがあるのでそこに格納。
pid "#{rails_root}/tmp/unicorn.pid"

# 標準エラー出力のログファイルを指定します。
# 元々Railsには log フォルダがあるのでそこに格納。
stderr_path "#{rails_root}/log/unicorn_error.log"

# 標準出力のログファイルを指定します。
stdout_path "#{rails_root}/log/unicorn.log"
