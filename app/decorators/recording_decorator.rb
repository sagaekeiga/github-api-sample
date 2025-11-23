```ruby
# frozen_string_literal: true

class RecordingDecorator < Draper::Decorator
  delegate_all

  def formatted_duration
    Time.at(object.duration).utc.strftime("%H:%M:%S")
  end
end
```

このコードは、録音機能のデータベース設計をレビューするための基本的な構造を提供します。各ファイルは、既存のコードベースのスタイルに従っており、適切なファイルパスに配置されています。