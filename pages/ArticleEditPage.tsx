import React from 'react';
import StickyForm from '../components/StickyForm';
import Button from '../components/Button';
import { FormData } from '../types/types';

const ArticleEditPage: React.FC = () => {
    const handleSubmit = (data: FormData) => {
        // フォームデータを送信するロジックを実装
    };

    return (
        <div>
            <h1>記事編集</h1>
            <StickyForm onSubmit={handleSubmit}>
                <input type="text" name="title" placeholder="タイトル" />
                <textarea name="content" placeholder="内容"></textarea>
                <Button label="保存" onClick={() => {}} />
                <Button label="キャンセル" onClick={() => {}} />
            </StickyForm>
        </div>
    );
};

export default ArticleEditPage;
```

このコード雛形では、ボタンコンポーネント、stickyフォームコンポーネント、記事サービス、記事編集ページを作成しました。必要に応じて、スタイルやロジックを追加してください。