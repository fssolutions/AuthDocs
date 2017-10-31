The OpenID Connect Protocol
################################################################################

The |project_name| uses OpenID Connect.

What is OpenID Connect?
********************************************************************************
OpenID Connect (OIDC) is an authentication protocol, based on the OAuth 2.0 family of specifications.
It uses simple JSON identity tokens (JWT) delivered via the OAuth 2.0 protocol.

While OAuth 2.0 is about resource access and sharing, OIDC is all about user authentication.
Its purpose is to give you one login for multiple sites.
Each time you need to log in to a website using OIDC, you are redirected to your OpenID site where you login, and then taken back to the website. For example, if you chose to sign in to Auth0 using your Google account then you used OIDC. Once you successfully authenticate with Google and authorize Auth0 to access your information, Google will send back to Auth0 information about the user and the authentication performed.
This information is returned in a JSON Web Token (JWT) called an ID Token.

(source: `Auth0 <https://auth0.com/docs/protocols/oidc>`__)


Who is using it?
********************************************************************************
Here is a non-exhaustive list of some who use OpenId Connect as authentication protocol.

* `PayPal <https://developer.paypal.com/docs/api/identity/#openidconnect>`__
* `Auth0 <https://auth0.com/blog/we-are-now-open-id-certified/>`__
* `Amazon Cognito <http://docs.aws.amazon.com/cognito/latest/developerguide/open-id.html>`__
* `ForgeRock <https://www.forgerock.com/blog/openam-now-openid-certified/>`__
* `Google <https://developers.google.com/identity/protocols/OpenIDConnect>`__
* `Microsoft Azure AD <https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-openid-connect-code>`__
* `Yahoo <https://developer.yahoo.com/oauth2/guide/openid_connect/>`__
* `IBM WebSphere <https://www.ibm.com/support/knowledgecenter/en/SSAW57_8.5.5/com.ibm.websphere.nd.doc/ae/csec_oiddesc2.html>`__
* `IBM Security Access Manager <https://www.ibm.com/support/knowledgecenter/en/SSPREK_9.0.0/com.ibm.isam.doc/config/concept/con_oidc_endpoints.html>`__
* `SalesForce <https://developer.salesforce.com/page/Inside_OpenID_Connect_on_Force.com>`__
* `U.S. Government Services SSO <https://developers.login.gov/openid-connect/>`__
* `Brazilian Government Services SSO <https://www.governoeletronico.gov.br/documentos-e-arquivos/sdk-Brasil-cidadao.pdf/view>`__
* `Human Brain Project <https://developer.humanbrainproject.eu/docs/projects/HBP%20Identity%20Management/1.2/developer-manual/introduction.html>`__

External Resources
********************************************************************************
You can find more information about the OpenID Connect protocol in the following links.

Pages
================================================================================
* `Official Website <http://openid.net/connect/>`__
* `Official Specifications <http://openid.net/developers/specs/>`__

Videos
================================================================================
* `An Introduction To OpenID Connect <https://www.youtube.com/watch?v=6DxRTJN1Ffo>`__
* `OpenID Connect Flows <https://www.youtube.com/watch?v=WVCzv50BslE>`__
* `Identity, Authentication + OAuth = OpenID Connect <https://www.youtube.com/watch?v=Kb56GzQ2pSk>`__
* `OAuth and OpenID Connect for Microservices <https://www.youtube.com/watch?v=BdKmZ7mPNns>`__
* `Securing your apps with OAuth2 and OpenID Connect <https://www.youtube.com/watch?v=lwaudf2h8FY>`__

Articles
================================================================================
* `OpenID Connect explained <https://connect2id.com/learn/openid-connect>`__
* `SAML2 vs JWT: Understanding OpenID Connect Part 1 <https://medium.com/@robert.broeckelmann/saml2-vs-jwt-understanding-openid-connect-part-1-fffe0d50f953>`__
* `SAML2 vs JWT: Understanding OpenID Connect Part 2 <https://medium.com/@robert.broeckelmann/saml2-vs-jwt-understanding-openid-connect-part-2-f361ca867baa>`__
* `Why the Future of Identity is OpenID Connect and not SAML <https://apicrazy.com/2014/08/18/why-the-future-of-identity-is-openid-connect-and-not-saml/>`__
