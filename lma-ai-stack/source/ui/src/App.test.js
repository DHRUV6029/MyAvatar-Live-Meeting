import React from 'react';
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders app div element', () => {
  render(<App />);
  const divElement = screen.getByText(
    
    (content, element) => element.tagName.toLowerCase() === 'div' && element.className.includes('App'),
  );
  expect(divElement).toBeInTheDocument();
});
