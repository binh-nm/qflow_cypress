/// <reference types="cypress" />
// ***********************************************************
// This example plugins/index.js can be used to load plugins
//
// You can change the location of this file or turn off loading
// the plugins file with the 'pluginsFile' configuration option.
//
// You can read more here:
// https://on.cypress.io/plugins-guide
// ***********************************************************

// This function is called when a project is opened or re-opened (e.g. due to
// the project's config changing)
/**
 * @type {Cypress.PluginConfig}
 */

 import resolve from 'resolve';
 import browserify from '@cypress/browserify-preprocessor';
 
 // eslint-disable-next-line @typescript-eslint/no-var-requires
 const cucumber = require('cypress-cucumber-preprocessor').default;
 
 export default (
   on: (
     arg0: string,
     arg1: { (spec: any, results: any): void; (browser: any, args: any): any }
   ) => void,
   config: { projectRoot: any }
 ) => {
   const options = {
     ...browserify.defaultOptions,
     typescript: resolve.sync('typescript', { basedir: config.projectRoot }),
   };
   on('file:preprocessor', cucumber(options));
 };
