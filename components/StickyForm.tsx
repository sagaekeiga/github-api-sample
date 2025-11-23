import React from 'react';
import { StickyFormProps } from '../types/interfaces';

const StickyForm: React.FC<StickyFormProps> = ({ children, onSubmit }) => {
    const handleSubmit = (e: React.FormEvent) => {
        e.preventDefault();
        // ここでフォームデータを取得し、onSubmitを呼び出す
    };

    return (
        <form onSubmit={handleSubmit} style={{ position: 'sticky', top: 0 }}>
            {children}
        </form>
    );
};

export default StickyForm;
```

```