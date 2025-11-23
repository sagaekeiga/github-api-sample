```ruby
# frozen_string_literal: true

import Stripe from 'stripe';

const stripe = new Stripe('your_stripe_secret_key');

export const createPaymentIntent = async (amount, currency) => {
  const paymentIntent = await stripe.paymentIntents.create({
    amount,
    currency,
  });
  return paymentIntent;
};

```

```