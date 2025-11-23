```ruby
# frozen_string_literal: true

import { createPaymentIntent } from './stripe';

document.addEventListener('DOMContentLoaded', () => {
  const planButton = document.getElementById('plan-button');
  
  planButton.addEventListener('click', async () => {
    const amount = 1000; // 例: 10.00 USD
    const currency = 'usd';
    
    try {
      const paymentIntent = await createPaymentIntent(amount, currency);
      console.log('Payment Intent created:', paymentIntent);
    } catch (error) {
      console.error('Error creating payment intent:', error);
    }
  });
});

```

```