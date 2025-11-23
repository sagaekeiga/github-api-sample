export interface ButtonProps {
    label: string;
    onClick: () => void;
    style?: React.CSSProperties;
}

export interface StickyFormProps {
    children: React.ReactNode;
    onSubmit: (data: any) => void;
}

export interface Article {
    id: string;
    title: string;
    content: string;
    status: 'pending' | 'approved' | 'rejected';
}
```

```