(* ::Package:: *)

{
  <|
    "href"->"pages/about.html",
    "body"->"About"
    |>,
  <|
    "href"->"categories.html",
    "body"->"Categories"
    |>,
  <|
    "href"->"tags.html",
    "body"->"Tags"
    |>,
  <|
    "href"->"authors.html",
    "body"->"Authors"
    |>,
  Replace[$$templateLib["getTemplateArguments"][#]["MainSiteURL"],{
    s_String:>
      <|
        "href"->s,
        "body"->"Main"
        |>,
    _->Nothing
    }],
  Replace[$$templateLib["getTemplateArguments"][#]["DocumentationURL"],{
    s_String:>
      <|
        "href"->s,
        "body"->"Documentation"
        |>,
    _->Nothing
    }],
  Replace[$$templateLib["getTemplateArguments"][#]["GitHubUserName"],{
    s:_String|{__String}:>
      <|
        "href"->
          URLBuild@<|
            "Scheme"->"https",
            "Domain"->"github.com",
            "Path"->Flatten@{s}
            |>,
        "body"->"GitHub"
        |>,
    _->Nothing
    }]
  }&