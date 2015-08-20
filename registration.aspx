<%@ Page Language="VB" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="registration" %>
<%@ Register TagPrefix="cc1" Namespace="Clearscreen.SharpHIP" Assembly="Clearscreen.SharpHIP" %>
<!DOCTYPE html>

<html>
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://js.arcgis.com/3.14/dijit/themes/claro/claro.css">
    <link rel="stylesheet" href="http://js.arcgis.com/3.14/esri/css/esri.css">
    <script src="http://js.arcgis.com/3.14/"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <title>Contact Information Update</title>
    <style>
            body,
        #btnAddTenant,#btnAddProperty,#btnSubmitForm {
            background-color: #8DB1CD;
        }
        div#all {
            background-color: white;
            margin-left: 20%;
            margin-right: auto;
            height: 3300px;
            width: 700px;
            border-radius: 50px;
            z-index: 0;
            position: absolute;
        }
        #instructions {
            left: 5%;
            padding: 25px;
            font-family: Arial;
        }

        #letter {
            left: 5%;
            position: absolute;
            z-index: 50;
            font-family: Arial;
            font-size: small;
        }

        input {
            width: 350px;
        }

        #chkNotify
        {
            width:25px;
        }

        #submit,
        #reset {
            width: 70px;
            background-color: #8DB1CD;
        }

        p#title {
            font: 45px arial, sans-serif;
            padding: 25px;
            text-align: center;
            margin-left: auto;
        }

        p#heading {
            font: 30px arial, sans-serif;
            padding: 0px;
            text-align: center;
            margin-left: auto;
        }

        p#subtitle {
            font: 15px arial, sans-serif;
            font-weight: bold;
            width: 75%;
            margin-left: 75px;
            text-align: justify;
            padding: 0px;
        }

        p#desc {
            font: 15px arial, sans-serif;
            width: 75%;
            margin-left: 75px;
            text-align: justify;
            padding: 15px;
        }

        form#emailreg {
            font: 15px arial, sans-serif;
            width: 75%;
            margin-left: 75px;
            text-align: justify;
            padding: 15px;
        }

        ul#faq {
            font: 15px arial, sans-serif;
            list-style-type: none;
            margin-left: 75px;
        }

        ul#nav li {
            display: inline;
            border-left: 1px solid black;
        }

            ul#nav li a {
                padding-left: 1em;
                padding-right: 1em;
                color: #000;
                background-color: #8DB1CD;
                text-decoration: none;
                font-family: Arial Narrow, arial, sans-serif;
            }

        ul#faq li a {
            color: #000;
            text-decoration: none;
            font-family: Arial Narrow, arial, sans-serif;
        }

        p#desc a {
            color: #000;
            text-decoration: none;
            font-family: Arial Narrow, arial, sans-serif;
        }

            p#desc a:hover {
                color: blue;
                font-weight: bold;
            }

        ul#nav li a:hover {
            color: blue;
        }

        ul#faq li a:hover {
            color: blue;
        }

        ul#faq li a:hover,
        ul#nav li a:focus {
            font-weight: bold;
        }

        ul#nav li a:hover,
        ul#nav li a:focus {
            font-weight: bold;
        }

        ul#nav li:first-child {
            border-left: none;
        }

        ul#nav {
            padding-left: 0;
            text-align: center;
            font: 45px arial, sans-serif;
        }

        div#linklist {
            background-color: #8DB1CD;
            border-radius: 25px;
            width: 575px;
            margin-left: auto;
            margin-right: auto;
        }

        div#logo {
            position: absolute;
            left: 0px;
            top: 0px;
            padding: 10px;
        }

        div#titlediv {
            position: relative;
            margin-left: auto;
            margin-right: auto;
            padding: 10px;
            top: -75px;
        }

        div#descdiv {
            text-align: justify;
            left: 0px;
            top: 75px;
            padding: 10px;
        }

        img#imglogo {
            vertical-align: text-top;
            border-radius: 25px;
        }

        div#homelink {
            font: 24px arial, sans-serif;
            display: inline;
            margin-left: 50px;
            text-align: center;
            padding: 15px;
            background-color: #8DB1CD;
            border-radius: 25px;
            width: 200px;
            font-family: Arial Narrow, arial, sans-serif;
        }

            div#homelink a:link,
            a:visited {
                text-decoration: none;
                color: #000;
            }

            div#homelink a:hover {
                color: blue;
                font-weight: bold;
            }

        div#contactlink {
            font: 24px arial, sans-serif;
            text-decoration: none;
            display: inline;
            margin-left: 275px;
            text-align: center;
            padding: 15px;
            background-color: #8DB1CD;
            border-radius: 25px;
            width: 144px;
            font-family: Arial Narrow, arial, sans-serif;
        }

            div#contactlink a:link,
            a:visited {
                text-decoration: none;
                color: #000;
            }

            div#contactlink a:hover {
                color: blue;
                font-weight: bold;
            }

           #gridDiv {
            height: 100%;
            width: 100%;
        }

        #myModal {
            height: 100%;
            width: 100%;
        }

        .modal-body {
            height: 300px;
        }   

        </style>


         <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
         <!--[if lt IE 9]>
            <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
         <![endif]-->
</head>
<body>
    
    <form id="frmRegistration" runat="server">
        <asp:ScriptManager ID="scriptManager"
            runat="server"></asp:ScriptManager>
        <!-- All Begin -->
        <div id="all">
            <br /><br /><br />
            <!-- Title Div Begin -->
            <div id="titlediv">
                <p id="title"><img src="images/cityLogo.png" />  Contact Information Update</p>
            </div>
            <div id="instructions">
                <p>Use this form to register your email address with the City. Additionally, you may register a tenant's email address.</p>
                
            </div>
            <!-- Title Div End -->
            
            <!-- Letter Begin -->
          

                
            <div id="letter">
                <p><asp:CheckBox ID="chkNotify"  runat ="server" Text="<strong>Disclaimer</strong>: We are unable to accept vacant lot information at this time. We apologize for the inconvenience. 
If you would like to be notified when this capability is available, check here." /></p>
                <label for="ownerName">Owner:</label>
                <br />
                
                <asp:TextBox runat="server" type="text" Text="John Doe" placeholder="Enter the owner's name" required="required" name="ownerName" ID="ownerName" autofocus="autofocus"></asp:TextBox>
                <br />
                <br />
                <label for="ownerAddress">Owner's Address:</label>
                <br />
                <asp:TextBox runat="server" Text="111 S Main" placeholder="Enter the owner's address" required="required" name="ownerAddress" id="ownerAddress"></asp:TextBox>
                <br />
                <br />
                <label for="ownerEmail">Owner's E-Mail:</label>
                <br />
                <asp:TextBox runat="server" type="email" Text="anywhere@yahoo.com" placeholder="Enter the owner's E-Mail" required="required" name="ownerEmail" id="ownerEmail"></asp:TextBox>
                <br />
                <br />
                <label for="ownerPhone">Owner's Phone Number (to verify accuracy only):</label>
                <br />
                <asp:TextBox runat="server" type="tel" Text="217-555-1212" placeholder="Enter the owner's Phone" required="required" name="ownerPhone" id="ownerPhone"></asp:TextBox>
                <br />
                <br />
                <label for="ownerLastFour">Owner's Last 4 Digits of SSN (to verify accuracy only):</label>
                <br />
                <asp:TextBox runat="server" type="text" Text="1111" placeholder="Enter the owner's last four digits of SSN" required="required" name="ownerLastFour" maxlength="4" title="ssn" pattern="[0-9]*" id="ownerLastFour"></asp:TextBox>
                <br />
                <br />
                <br />
                <div id="property1">
                    <label for="propertyAddress1">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" Text="123 Main St" placeholder="Enter the property address" required="required" name="propertyAddress1" id="propertyAddress1"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property2" style="display:none;">
                    <label for="propertyAddress2">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress2" id="propertyAddress2"></asp:TextBox>
                    <br />
                    <br />
                </div>
                
                <div id="property3" style="display:none;">
                    <label for="propertyAddress3">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress3" id="propertyAddress3"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property4" style="display:none;">
                    <label for="propertyAddress4">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress4" id="propertyAddress4"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property5" style="display:none;">
                    <label for="propertyAddress5">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress5" id="propertyAddress5"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property6" style="display:none;">
                    <label for="propertyAddress6">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress6" id="propertyAddress6"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property7" style="display:none;">
                    <label for="propertyAddress7">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress7" id="propertyAddress7"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property8" style="display:none;">
                    <label for="propertyAddress8">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress8" id="propertyAddress8"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property9" style="display:none;">
                    <label for="propertyAddress9">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress9" id="propertyAddress9"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property10" style="display:none;">
                    <label for="propertyAddress10">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress10" id="propertyAddress10"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property11" style="display:none;">
                    <label for="propertyAddress11">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress11" id="propertyAddress11"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property12" style="display:none;">
                    <label for="propertyAddress12">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress12" id="propertyAddress12"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property13" style="display:none;">
                    <label for="propertyAddress2">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress13" id="propertyAddress13"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property14" style="display:none;">
                    <label for="propertyAddress14">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress14" id="propertyAddress14"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property15" style="display:none;">
                    <label for="propertyAddress15">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress15" id="propertyAddress15"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property16" style="display:none;">
                    <label for="propertyAddress16">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress16" id="propertyAddress16"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property17" style="display:none;">
                    <label for="propertyAddress16">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress17" id="propertyAddress17"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property18" style="display:none;">
                    <label for="propertyAddress18">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress18" id="propertyAddress18"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property19" style="display:none;">
                    <label for="propertyAddress19">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress19" id="propertyAddress19"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property20" style="display:none;">
                    <label for="propertyAddress20">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress20" id="propertyAddress20"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property21" style="display:none;">
                    <label for="propertyAddress21">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress21" id="propertyAddress21"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property22" style="display:none;">
                    <label for="propertyAddress22">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress22" id="propertyAddress22"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property23" style="display:none;">
                    <label for="propertyAddress23">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress23" id="propertyAddress23"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property24" style="display:none;">
                    <label for="propertyAddress24">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress24" id="propertyAddress24"></asp:TextBox>
                    <br />
                    <br />
                </div>

                <div id="property25" style="display:none;">
                    <label for="propertyAddress25">Property Address:</label>
                    <br />
                    <asp:TextBox runat="server" type="text" placeholder="Enter an additional property" name="propertyAddress25" id="propertyAddress25"></asp:TextBox>
                    <br />
                    <br />
                </div>

                 <br />
                <br />
                <button type="button" id="btnAddProperty" onclick="addProperty()">Add another Property</button>

                <br />
                <br />
                <p>Tenant E-Mail Registration</p>
                <br />
                <br />
                <!-- Begin Tenants -->
                <div id="tenant">
                    <div id="tenant1">
                        <label for="tenantName1">Name:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant name" name="tenantName1" id="tenantName1"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantPropertyAddress1">Property Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant address" name="tenantPropertyAddress1" id="tenantPropertyAddress1"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantEmailAddress1">E-Mail Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant E-Mail address " name="tenantEmailAddress1" id="tenantEmailAddress1"></asp:TextBox>
                    </div>
                    <div id="tenant2" style="display:none;">
                        <br />
                        <br />
                        <label for="tenantName2">Name:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant name" name="tenantName2" id="tenantName2"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantPropertyAddress2">Property Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant address" name="tenantPropertyAddress2" id="tenantPropertyAddress2"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantEmailAddress2">E-Mail Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant E-Mail address " name="tenantEmailAddress2" id="tenantEmailAddress2"></asp:TextBox>
                    </div>
                    <div id="tenant3" style="display:none;">
                        <br />
                        <br />
                        <label for="tenantName3">Name:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant name" name="tenantName3" id="tenantName3"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantPropertyAddress3">Property Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant address" name="tenantPropertyAddress3" id="tenantPropertyAddress3"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantEmailAddress3">E-Mail Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant E-Mail address " name="tenantEmailAddress3" id="tenantEmailAddress3"></asp:TextBox>
                    </div>
                    <div id="tenant4" style="display:none;">
                        <br />
                        <br />
                        <label for="tenantName4">Name:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant name" name="tenantName4" id="tenantName4"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantPropertyAddress4">Property Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant address" name="tenantPropertyAddress4" id="tenantPropertyAddress4"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantEmailAddress1">E-Mail Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant E-Mail address " name="tenantEmailAddress1" id="tenantEmailAddress4"></asp:TextBox>
                    </div>
                    <div id="tenant5" style="display:none;">
                        <br />
                        <br />
                        <label for="tenantName5">Name:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant name" name="tenantName5" id="tenantName5"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantPropertyAddress5">Property Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant address" name="tenantPropertyAddress5" id="tenantPropertyAddress5"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantEmailAddress1">E-Mail Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant E-Mail address " name="tenantEmailAddress5" id="tenantEmailAddress5"></asp:TextBox>
                    </div>
                    <div id="tenant6" style="display:none;">
                        <br />
                        <br />
                        <label for="tenantName6">Name:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant name" name="tenantName6" id="tenantName6"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantPropertyAddress6">Property Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant address" name="tenantPropertyAddress6" id="tenantPropertyAddress6"></asp:TextBox>
                        <br />
                        <br />
                        <label for="tenantEmailAddress6">E-Mail Address:</label>
                        <br />
                        <asp:TextBox runat="server" type="text" placeholder="Enter an additional tenant E-Mail address " name="tenantEmailAddress6" id="tenantEmailAddress6"></asp:TextBox>
                    </div>
                </div>
                <!-- End Tenants -->
                <br />
                <br />
                <button type="button" id="btnAddTenant" onclick="addAddress()">Add another Tenant</button>
                <br />
                <br />
                <br />
                
                <cc1:HIPControl id="HIPControl1" runat="server" BackgroundPatternColor="Transparent" BackgroundColor="10, 65, 107" FontSize="16" ImageBorderColor="White" RandomCodeLength="True" TextColor="White" TextPattern="Horizontal" TextPatternColor="White" ValidationIgnoreCase="True" AutoRedirect="false" ValidationMode="Forms" />
                <br />
                 <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                <br />
                <asp:Button runat="server" ID="btnSubmitForm" Text="Send" />
                
                <br />
                <br />
                
            </div>
            <!-- Letter End -->
          
        </div>
        <!-- All End -->

        <!-- Container Begin -->
            <div id="mainDiv" class="container">

                <!-- Modal Begin -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">


                        <!-- Modal content-->
                        <div class="modal-content">

                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Select an Address</h4>

                            </div>

                            <div class="modal-body">
                                <div id="gridDiv"></div>
                            </div>
                            <div class="modal-footer">

                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal End -->
            </div>
            <!-- Container End -->
    </form>

     <script src="http://js.arcgis.com/3.14/"></script>

     <script>
         var items


         require([
                 "dojo/on",
                 "dojo/_base/array",
                 "esri/tasks/locator",
                 "dojox/grid/DataGrid",
                 "dojo/data/ItemFileWriteStore",
                 "dijit/registry", "dojo/parser",
                 "dijit/registry",
                 "dojo/dom",
                 "dojo/_base/lang",
                 "dijit/layout/ContentPane",
                 "dojo/domReady!"
         ],
          function (on, arrayUtils, Locator, DataGrid, ItemFileWriteStore, registry, parser, registry, dom, lang) {
              parser.parse();

              var store, grid, data, layout, node;

              //document.getElementById("grid").style.display = "none";


              on(document.getElementById('ownerAddress'), 'focusout', checkAddress);

              on(document.getElementById('ownerAddress'), 'focusin', getElementId);

              on(document.getElementById('propertyAddress1'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress1'), 'focusin', getElementId);

              on(document.getElementById('propertyAddress2'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress2'), 'focusin', getElementId);

              on(document.getElementById('propertyAddress3'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress3'), 'focusin', getElementId);

              on(document.getElementById('propertyAddress4'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress4'), 'focusin', getElementId);

              on(document.getElementById('propertyAddress5'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress5'), 'focusin', getElementId);

              on(document.getElementById('propertyAddress6'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress6'), 'focusin', getElementId);

              on(document.getElementById('propertyAddress7'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress7'), 'focusin', getElementId);

              on(document.getElementById('propertyAddress8'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress8'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress9'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress9'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress10'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress10'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress11'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress11'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress12'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress12'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress13'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress13'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress14'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress14'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress15'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress15'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress16'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress16'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress17'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress17'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress18'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress18'), 'focusin', getElementId);



              on(document.getElementById('propertyAddress19'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress19'), 'focusin', getElementId);



              on(document.getElementById('propertyAddress20'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress20'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress21'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress21'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress22'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress22'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress23'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress23'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress24'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress24'), 'focusin', getElementId);


              on(document.getElementById('propertyAddress25'), 'focusout', checkAddress);

              on(document.getElementById('propertyAddress25'), 'focusin', getElementId);


              on(document.getElementById('tenantPropertyAddress1'), 'focusout', checkAddress);

              on(document.getElementById('tenantPropertyAddress1'), 'focusin', getElementId);


              on(document.getElementById('tenantPropertyAddress2'), 'focusout', checkAddress);

              on(document.getElementById('tenantPropertyAddress2'), 'focusin', getElementId);


              on(document.getElementById('tenantPropertyAddress3'), 'focusout', checkAddress);

              on(document.getElementById('tenantPropertyAddress3'), 'focusin', getElementId);


              on(document.getElementById('tenantPropertyAddress4'), 'focusout', checkAddress);

              on(document.getElementById('tenantPropertyAddress4'), 'focusin', getElementId);


              on(document.getElementById('tenantPropertyAddress5'), 'focusout', checkAddress);

              on(document.getElementById('tenantPropertyAddress5'), 'focusin', getElementId);


              on(document.getElementById('tenantPropertyAddress6'), 'focusout', checkAddress);

              on(document.getElementById('tenantPropertyAddress6'), 'focusin', getElementId);





              function getElementId() {

                  node = document.activeElement.id;

              }


              function checkAddress() {
                  console.log(node);
                  var locator = new Locator("http://maps.decaturil.gov/arcgis/rest/services/Public/WebAddressLocator/GeocodeServer");
                  //console.log(document.getElementById('ownerAddress').value);
                  //node = document.getElementById('ownerAddress');
                  node = document.getElementById(node);
                  // according to your service it takes Single Line
                  var params = {
                      "Single Line Input": node.value
                  };
                  locator.addressToLocations(params).then(function (addressCandidates) {
                      //console.log('success', addressCandidates);
                      //console.log(addressCandidates.length);
                      

                      if ((addressCandidates.length >= 1) && (addressCandidates[0].address != node.value.toUpperCase())) {
                          console.log(addressCandidates.length);
                          
                          data = {
                              identifier: "id",
                              items: []
                          };

                          layout = [[
                         //   {'name': 'FID', 'field': 'id', 'width': '50px'},//
                            { 'name': 'Address', 'field': 'address', 'width': '200px' }
                          ]];
                          if (addressCandidates.length >= 1) {
                              for (a = 0; a < addressCandidates.length; a++) {

                                  // This is the address that should go into a grid cell
                                  data.items.push(lang.mixin({ id: a + 1 }, { address: addressCandidates[a].address }));
                                  // address is here
                                  console.log(addressCandidates[a].address);

                              }
                              console.log(addressCandidates);
                              items = arrayUtils.map(addressCandidates, function (result) {
                                  console.log(result);
                                  return result;
                              });
                              console.log(items);
                          }


                          console.log("Log" + data);
                          if (window.grid) {
                              dojo.destroy('grid');
                              dijit.byId('grid').destroy(true);
                              registry.remove(dom.byId('gridDiv'));
                          }
                          store = new ItemFileWriteStore({ data: data });
                          grid = new DataGrid({
                              id: 'grid',
                              store: store,
                              structure: layout,
                              autoWidth: true,
                              autoHeight: false,
                              rowSelector: '20px'
                          });


                          // display grid
                          //document.getElementById("grid").style.display = "block";
                          //alert("hello " + addressCandidates.length);
                          // Show modal

                          $("#myModal").modal("show");
                          $('#myModal').show(function () {
                              $(this).trigger('isVisible');


                          });

                          //registry.byId("grid").display=block;
                          grid.on("rowclick", onRowClickHandler);
                          //console.log(addressCandidates.length);


                          //hookup the event
                          $('#myModal').bind('isVisible', isVisible);

                      }
                      else {
                          if (addressCandidates.length == 0) {
                              alert("This does not appear to be an address in the city of Decatur. Please try again.");

                              dom.byId(node).focus();
                              dom.byId(node).value = "";
                          }

                      }
                      var adresses = addressCandidates.map(function () {
                          return x.address;

                      });
                      //console.log(adresses);


                  })
                      .otherwise(function (err) {

                          console.log('somethings wrong', err);
                      });

              }


              //declare event to run when div is visible
              function isVisible() {
                  /*append the new grid to the div*/
                  grid.placeAt("gridDiv");
                  /*Call startup() to render the grid*/
                  grid.startup();

              }

              function onRowClickHandler(evt) {
                  console.log(evt);
                  var clickedAddress = evt.grid.getItem(evt.rowIndex).address;
                  console.log(clickedAddress);
                  alert(clickedAddress);
                  dom.byId(node).value = clickedAddress;

                  //  console.log(evt.explicitOriginalTarget.data);
              }
          });
     </script>
     <script>
         var ii = 2;
         function addAddress() {
             if (ii < 7) {

                 document.getElementById("tenant" + ii).style.display = "";
                 ii++;
             }
         }
    </script>


    <script>
        iii = "2";
        function addProperty() {
            if (iii < 26) {
                document.getElementById("property" + iii).style.display = "";
                iii++;
            }
        }
    </script> 
        


    <!-- Start of StatCounter Code for Default Guide -->
    <script type="text/javascript">
        var sc_project = 10519636;
        var sc_invisible = 1;
        var sc_security = "e3f64ddf";
        var scJsHost = (("https:" == document.location.protocol) ?
        "https://secure." : "http://www.");
        document.write("<sc" + "ript type='text/javascript' src='" +
        scJsHost +
        "statcounter.com/counter/counter.js'></" + "script>");
    </script>
    <noscript>
        <div class="statcounter">
            <a title="shopify
analytics" href="http://statcounter.com/shopify/"
               target="_blank">
                <img class="statcounter"
                     src="http://c.statcounter.com/10519636/0/e3f64ddf/1/"
                     alt="shopify analytics">
            </a>
        </div>
    </noscript>
    <!-- End of StatCounter Code for Default Guide -->
</body>
</html>