```javascript
// frozen_string_literal: true

document.addEventListener('DOMContentLoaded', function() {
  const button = document.getElementById('new-message-button');
  if (button) {
    button.addEventListener('click', function() {
      alert('新しいメッセージを作成します。');
      // ここに新しいメッセージ作成のロジックを追加
    });
  }
});
```

```