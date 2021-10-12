import { Given, When } from 'cypress-cucumber-preprocessor/steps';

Given('I visit google.com', () => {
  cy.visit('www.google.com');
});

When('I visit google.com', () => {
  cy.visit('www.google.com');
});
