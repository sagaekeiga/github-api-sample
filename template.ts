以下に、要件に基づいた実装の雛形となるコードを示します。このコードはNode.js環境で動作し、Expressを使用してAPIを構築し、MongoDBを使用してデータを管理することを前提としています。

### 1. データベーススキーマの定義

まず、MongoDBのスキーマを定義します。Mongooseを使用してスキーマを作成します。

```javascript
// models/Task.js
const mongoose = require('mongoose');

const taskSchema = new mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    description: {
        type: String,
        required: false
    },
    parent_id: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Task',
        required: false
    }
}, { timestamps: true });

const Task = mongoose.model('Task', taskSchema);
module.exports = Task;
```

### 2. APIの実装

次に、親タスクを設定するためのAPIエンドポイントを実装します。

```javascript
// routes/task.js
const express = require('express');
const Task = require('../models/Task');
const router = express.Router();

// 小タスクを作成するエンドポイント
router.post('/tasks', async (req, res) => {
    const { title, description, parent_id } = req.body;

    try {
        const newTask = new Task({ title, description, parent_id });
        await newTask.save();
        res.status(201).json(newTask);
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
});

// 小タスクを取得するエンドポイント
router.get('/tasks/:id', async (req, res) => {
    try {
        const task = await Task.findById(req.params.id).populate('parent_id');
        if (!task) {
            return res.status(404).json({ message: 'Task not found' });
        }
        res.json(task);
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
});

module.exports = router;
```

### 3. サーバーの設定

次に、Expressサーバーを設定します。

```javascript
// server.js
const express = require('express');
const mongoose = require('mongoose');
const taskRoutes = require('./routes/task');

const app = express();
const PORT = process.env.PORT || 3000;

// MongoDB接続
mongoose.connect('mongodb://localhost:27017/taskdb', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});

// ミドルウェア
app.use(express.json());
app.use('/api', taskRoutes);

// サーバーの起動
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
```

### 4. 実行方法

1. MongoDBを起動します。
2. 必要なパッケージをインストールします。

```bash
npm install express mongoose
```

3. サーバーを起動します。

```bash
node server.js
```

### 5. APIの使用例

- 小タスクを作成するリクエストの例：

```json
POST /api/tasks
{
    "title": "小タスクのタイトル",
    "description": "小タスクの説明",
    "parent_id": "親タスクのID" // 親タスクがある場合
}
```

- 小タスクを取得するリクエストの例：

```json
GET /api/tasks/{小タスクのID}
```

このコードは基本的な雛形であり、エラーハンドリングやバリデーション、セキュリティ対策などを追加することで、より堅牢なアプリケーションにすることができます。