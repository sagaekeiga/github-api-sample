import React from 'react';
import { ButtonProps } from '../types/interfaces';

const Button: React.FC<ButtonProps> = ({ label, onClick, style }) => {
    return (
        <button onClick={onClick} style={style}>
            {label}
        </button>
    );
};

export default Button;
```

```