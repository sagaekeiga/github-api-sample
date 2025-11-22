以下に、要件に基づいたNode.jsとJavaScriptを使用したタスク管理機能の実装雛形を示します。このコードは、親タスクと小タスクの関係をデータベースに保存し、APIを通じて親タスクを設定する機能を持っています。

### 1. データベーススキーマの変更

まず、データベースに`parent_id`カラムを追加するためのマイグレーションファイルを作成します。ここでは、MongoDBを使用することを想定していますが、他のデータベースでも同様の概念を適用できます。

```javascript
// migrations/addParentIdToTasks.js
const mongoose = require('mongoose');

const taskSchema = new mongoose.Schema({
    title: { type: String, required: true },
    description: { type: String },
    parent_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Task' }, // 親タスクのID
    // 他のフィールド
});

const Task = mongoose.model('Task', taskSchema);

module.exports = Task;
```

### 2. APIエンドポイントの実装

次に、Expressを使用してAPIエンドポイントを実装します。親タスクを設定するためのエンドポイントを用意します。

```javascript
// server.js
const express = require('express');
const mongoose = require('mongoose');
const Task = require('./migrations/addParentIdToTasks');

const app = express();
app.use(express.json());

mongoose.connect('mongodb://localhost:27017/taskdb', { useNewUrlParser: true, useUnifiedTopology: true });

// 小タスクを作成し、親タスクを設定するエンドポイント
app.post('/tasks', async (req, res) => {
    const { title, description, parentId } = req.body;

    try {
        const newTask = new Task({
            title,
            description,
            parent_id: parentId ? parentId : null // 親タスクが指定されていれば設定
        });

        await newTask.save();
        res.status(201).json(newTask);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
});

// 小タスクを取得するエンドポイント
app.get('/tasks/:id', async (req, res) => {
    try {
        const task = await Task.findById(req.params.id).populate('parent_id'); // 親タスクの情報も取得
        if (!task) return res.status(404).json({ message: 'Task not found' });
        res.json(task);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
});

// サーバーを起動
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
```

### 3. モデルの定義

タスクモデルを定義します。これにより、タスクの作成や取得が可能になります。

```javascript
// models/Task.js
const mongoose = require('mongoose');

const taskSchema = new mongoose.Schema({
    title: { type: String, required: true },
    description: { type: String },
    parent_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Task' }, // 親タスクのID
    // 他のフィールド
});

const Task = mongoose.model('Task', taskSchema);

module.exports = Task;
```

### 4. 実行方法

1. MongoDBを起動します。
2. 上記のコードを適切なファイルに保存します。
3. `npm install express mongoose`を実行して必要なパッケージをインストールします。
4. `node server.js`を実行してサーバーを起動します。

### 5. テスト

APIをテストするために、Postmanやcurlを使用して以下のリクエストを送信できます。

- 小タスクの作成:
    ```json
    POST /tasks
    {
        "title": "小タスクのタイトル",
        "description": "小タスクの説明",
        "parentId": "親タスクのID" // 親タスクがある場合
    }
    ```

- 小タスクの取得:
    ```json
    GET /tasks/{taskId}
    ```

この雛形を基に、さらに機能を追加したり、エラーハンドリングを強化したりすることができます。