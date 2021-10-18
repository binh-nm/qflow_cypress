import { Before, Given, When, Then, After, And } from 'cypress-cucumber-preprocessor/steps';
import { baseUrl, questionPageUrl, quotePageUrl } from '../../../../constants';
import { fillFieldWithValue, getFieldType, checkPackages, confirmContactInfo} from '../../../../utils';
import { cases } from '../../../../fixtures/car-qflow-questions.json';
import { testData } from '../../../../fixtures/test-data.json';

Before({ tags: '@english' }, () => {
  cy.visit(`${baseUrl}en/${questionPageUrl}`, {
    auth: {
      username: '1423',
      password: '1423',
    },
  });
});

Before({ tags: '@thai' }, () => {
  cy.reload();
  cy.visit(`${baseUrl}${questionPageUrl}`, {
    auth: {
      username: '1423',
      password: '1423',
    },
  }); 
});

// Before(() => {
//   cy.intercept('POST', '**/api/campaign/car-insurance/reponse').as(
//     'api/campaign/car-insurance/reponset');
// });

When(
  'I answer questions with values of test case {string}',
  (testCase: string) => {
    const keys: string[] = Object.keys(cases[testCase]);
    const values: string[] = Object.values(cases[testCase]);
    for (let index: number = 0; index < keys.length; index += 1) {
      const fieldType = getFieldType(keys[index]);
      fillFieldWithValue(fieldType, keys[index], values[index]);
    }
  }
);

Then(
  'Check visibility of packages with value of test case {string}',
  (testCase: string) => {
    const values: string[] = Object.values(cases[testCase]);
    for (let index: number = 0; index < values.length; index += 1) {
      checkPackages(values[index]);
    }
});

When(
  'User change filter option in EN', () => {
    cy.get('label[for=deductible_all_packages]')
    .should('be.visible')
    .click();
    cy.get('div[class$=pr-md-3]')
    .within(() => {
      cy.get('button')
      .should('have.text','APPLY')
      .click();
    });
});

When(
  'User change filter option in TH', () => {
    cy.get('label[for=deductible_all_packages]')
    .should('be.visible')
    .click();
    cy.get('div[class$=pr-md-3]')
    .within(() => {
      cy.get('button')
      .should('have.text','เลือก')
      .click();
    });
});

When(
  'User click on Proceed button with value of test case {string}', 
  (testCase: string) => {
    const values: string[] = Object.values(cases[testCase]);
    cy.get(`div[data-testid=${values[0]}]`)
    .should('be.visible')
    .within(() => {
      cy.get('button[data-testid=buy-now]')
      .should('be.visible')
      .click();
    });
    cy.wait(5000);
  }
);

When(
  'User confirm contact info with value of test case {string}',
  (testCase: string) => {
    const keys: string[] = Object.keys(cases[testCase]);
    const values: string[] = Object.values(cases[testCase]);
    for (let index: number = 0; index < keys.length; index += 1) {
      const fieldType = getFieldType(keys[index]);
      confirmContactInfo(fieldType, keys[index], values[index]);
    }
  }
);

And(
  'User navigate to Thank You page', () => {
    cy.visit(`${baseUrl}en/product/car-insurance/confirm/thankyou`);
  }
);

Then(
  'Verify user information show in Thank You page', () => {
    cy.wait(5000);
    cy.get('div[class=ConfirmDetails_item__FAUoi]')
    .should('be.visible')
    .within(() => {
      cy.get('span')
      .contains('0999999999')
      .should('be.visible');
    })
  }
);



