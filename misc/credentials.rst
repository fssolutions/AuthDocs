Keys, Credentials and Endpoints
################################################################################

Through your experimentation of the IATec Authentication Identity Provider, you will need some information which are listed below.

.. note:: The following information relate to the **Development Server**. It might have unstability issues.
  For a more reliable and available environment, please contact **IATec**.

Endpoints
********************************************************************************
* **Authority**: ``https://login-dev.sdasystems.org/``
* **Discovery Endpoint**: ``https://login-dev.sdasystems.org/.well-known/openid-configuration``
* **Authorization Endpoint**: ``https://login-dev.sdasystems.org/connect/authorize``
* **Token Endpoint**: ``https://login-dev.sdasystems.org/connect/token``
* **Introspection Endpoint**: ``https://login-dev.sdasystems.org/connect/introspect``

Credentials for Clients
********************************************************************************
There are some static client credentials that can be used in order to evaluate Identity Provider.
These are categorized by the authentication flow they are allowed to perform.

.. note:: For more information on OpenID Connect authentication flows, check this `nice article <https://connect2id.com/learn/openid-connect>`__.

Redirect URLs
================================================================================
All the static clients listed below are configured to use the following **redirect URLs**:

* ``http://localhost:8080/``
* ``http://localhost:8080/callback``
* ``http://localhost:8080/auth/callback``
* ``http://localhost:1234/``
* ``http://localhost:1234/callback``
* ``http://localhost:1234/auth/callback``
* ``customscheme://localhost:8080/``
* ``customscheme://localhost:8080/callback``
* ``customscheme://localhost:1234/``
* ``customscheme://localhost:1234/callback``
* ``customscheme://m.iatec.com/``
* ``customscheme://m.iatec.com/callback``


Post-Logout Redirect URLs
================================================================================
In a simmilar way, all the static clients listed below are configured to use the following **post-logout redirect URLs**:

* ``http://localhost:8080/``
* ``http://localhost:8080/postlogout``
* ``http://localhost:8080/auth/postlogout``
* ``http://localhost:1234/``
* ``http://localhost:1234/postlogout``
* ``http://localhost:1234/auth/postlogout``
* ``customscheme://localhost:8080/``
* ``customscheme://localhost:8080/postlogout``
* ``customscheme://localhost:1234/``
* ``customscheme://localhost:1234/postlogout``
* ``customscheme://m.iatec.com/``
* ``customscheme://m.iatec.com/postlogout``

Authorization Code Flow
================================================================================
* **Client ID**: ``democlient_codeflow``
* **Client Secret**: ``clientsecret01`` (expires in january 1st of 2018).
* **Allowed Scopes**: ``openid``, ``demoapi``, ``apidev``, ``profile``, ``email``, ``phone``, ``offline_access``

Implicit Flow
================================================================================
* **Client ID**: ``democlient_implicitflow``
* **Allowed Scopes**: ``openid``, ``demoapi``, ``apidev``, ``profile``, ``email``, ``phone``

Hybrid Flow
================================================================================
* **Client ID**: ``democlient_hybridflow``
* **Client Secret**: ``clientsecret01`` (expires in january 1st of 2018).
* **Allowed Scopes**: ``openid``, ``demoapi``, ``apidev``, ``profile``, ``email``, ``phone``, ``offline_access``

Client Credentials Flow
================================================================================
* **Client ID**: ``democlient_credentialsflow``
* **Client Secret**: ``clientsecret01`` (expires in january 1st of 2018).
* **Allowed Scopes**: ``demoapi``, ``apidev``, ``profile``, ``email``, ``phone``, ``offline_access``


Credentials for Users
********************************************************************************
At the moment only one test user is available.

* **Username**: ``james.white``
* **Password**: ``1844``

Credentials for Scopes
********************************************************************************
Scopes might have credentials, which are used to validade a token received in an API call.

* **Scope Name** (also called Client ID in some contexts): ``demoapi``.
* **Scope Secret** (also called Client Secret in some contexts): ``secret123``
  (expires in january 1st of 2018).

Access Tokens
********************************************************************************
A permanent Access Token is available in order to ease API configuration even without implementing the token retrieval.

 * ``access_token+jameswhite``
