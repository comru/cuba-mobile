<#-- @ftlroot "" -->
<#import "/spring.ftl" as spring />

<html>
<head>
    <title>
        Cuba Mobile
    </title>               
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="<@spring.url "/resources/css/mobile.css"/>"/>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>        
    <script src="<@spring.url "/resources/js/mobile.js"/>"></script>
    <script src="<@spring.url "/resources/js/script.js"/>"></script>
</head>
<body>
    <div data-role="page" id="main_page" data-theme="b">
        <div data-role="header" >
            <h1>Cuba Mobile</h1>                
        </div>
        <div data-role="content" >  
            <ul data-role="listview" data-inset="true">
                <li><a href="#lookupReflow" class="c-listview" data-lookup="/resources/js/lookup/empty.json">Empty</a></li>
                <li><a href="#custom" class="custom">Custom</a></li>
                <li><a href="#style">Stylee</a></li>
                <li><a href="#about">About</a></li>
            </ul>
        </div>            
    </div>  
    <div data-role="page" id="lookupReflow" data-theme="b">
        <div data-role="header" data-add-back-btn="true">
            <h1>Empty</h1>                
        </div>
        <div data-role="content">          
        </div>            
    </div>
    <div data-role="page" id="custom" data-theme="b">
        <div data-role="header">
            <h1>Custom</h1>
        </div>
        <div data-role="content">
        </div>
    </div>
    <div data-role="page" id="style" data-theme="b">
        <div data-role="header" data-add-back-btn="true">
            <h1>Empty</h1>                
        </div>
        <div data-role="content">
            <table data-role="table" id="style-table" data-mode="reflow" class="ui-responsive">
                <thead>
                    <tr>
                        <th data-priority="persist">Name</th>
                        <th data-priority="1">Attr Date</th>
                        <th data-priority="2">Attr Int</th>
                        <th data-priority="3">Attr Bool</th>
                        <th data-priority="4">Attr Double</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>null</td>
                        <td>2014-11-29</td>
                        <td>1</td>
                        <td>true</td>
                        <td>2</td>
                    </tr>
                </tbody>
            </table>
        </div>            
    </div>

</body>
</html>