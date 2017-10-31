Create a Simple Angular Client
################################################################################
.. note:: The complete source code for this tutorial can be accessed in `GitHub <https://github.com/iatec-docs/examples_auth_ng/tree/master/using_angular-oauth2-oidc>`__

Clone the Angular Quickstart Repository
********************************************************************************
This guide adds OpenID Connect capabilities on top of the the Angular Quickstart project.

For such, first we need to clone the repository by runninng the following commands::

  git clone https://github.com/angular/quickstart.git iatec-authdemo-angular
  cd iatec-authdemo-angular
  npm install

.. note:: In order to run the commands above you must have the **git** and **npm** tools installed.

Library Installation and Wiring
********************************************************************************
In the newly created directory, run the following command in order to install the **angular-oauth2-oidc** package::

  npm install angular-oauth2-oidc --save

Also, it is needed to update the **typescript** package to at least the version 2.2::

  npm install typescript@^2.2 --save-dev

Some additional wiring is required. Add the following highlighted lines to the ``system.config.js`` file:

.. code-block:: javascript
  :linenos:
  :emphasize-lines: 3, 8-20

  map: {
      [...]
      'angular-oauth2-oidc':       'npm:angular-oauth2-oidc',
      [...]
  },
  packages: {
      [...]
      'angular-oauth2-oidc': {
          main: 'angular-oauth2-oidc.umd.js',
          format: 'cjs',
          defaultExtension: 'js',
          map: {
              'jsrsasign': '/node_modules/jsrsasign/lib/jsrsasign.js',
          },
          meta: {
              'angular-oauth2-oidc': {
                  deps: ['require','jsrsasign']
              },
          }
      },
      [...]
  }

OpenID Connect Configuration
********************************************************************************
Now its time to configure the application to use the library and connect in the
IATec Authentication Server.

Add a file in the directory **app** called auth.config.ts and paste in the following code:

.. code-block:: typescript
  :linenos:

  import { AuthConfig } from 'angular-oauth2-oidc';

  export const authConfig: AuthConfig = {
    issuer: 'https://login-dev.sdasystems.org',
    redirectUri: window.location.origin + '/callback',
    clientId: 'democlient_implicitflow',
    scope: 'openid profile email demoapi',
    postLogoutRedirectUri: window.location.origin + '/postlogout',
  }

In the file **app.component.ts**, configure the OAuthService with the config object and create some helper methods for *login* and *logoff*, as follows:

.. code-block:: typescript
  :linenos:

  import { Component } from '@angular/core';
  import { OAuthService } from 'angular-oauth2-oidc';
  import { JwksValidationHandler } from 'angular-oauth2-oidc';
  import { authConfig } from './auth.config';

  @Component({
    selector: 'my-app',
    template: `<h1>Hello {{name}}</h1>`,
  })
  export class AppComponent {
    constructor(private oauthService: OAuthService) {
      this.configureWithNewConfigApi();
    }
    private configureWithNewConfigApi() {
      this.oauthService.configure(authConfig);
      this.oauthService.tokenValidationHandler = new JwksValidationHandler();
      this.oauthService.loadDiscoveryDocumentAndTryLogin();
    }

    public login() {
      this.oauthService.initImplicitFlow();
    }

    public logoff() {
      this.oauthService.logOut();
    }

    public get name() {
      let claims: any = this.oauthService.getIdentityClaims();
      if (!claims) return 'Anonymous User';
      return claims.name;
    }
  }

Now we will configure the view. For that, change the highlighted line in the same file:

.. code-block:: typescript
  :linenos:
  :emphasize-lines: 3

  @Component({
    selector: 'my-app',
    templateUrl: './app.component.html'
  })

And create a new file named ``app.component.ts`` in the directory **app** with the following content:

.. code-block:: html+ng2
  :linenos:

  <h1>Hello {{name}}</h1>
  <button (click)="this.login()">Login</button>
  <button (click)="this.logoff()">Logoff</button>

More Info
********************************************************************************
More information and support for the library **angular-oauth2-oidc** can be found in the `library documentation website <https://manfredsteyer.github.io/angular-oauth2-oidc/angular-oauth2-oidc/docs/>`__.
