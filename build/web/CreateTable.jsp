<%-- 
    Document   : CreateTable
    Created on : Dec 3, 2018, 9:57:44 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>JavaScript document.createElement Method Example</title>
    <style>
        table, th, td 
        {
            font: 17px Calibri;
            border: solid 1px #DDD;
            border-collapse: collapse;
            padding: 2px 3px;
            text-align: center;
            margin: 10px 0;
        }
        th {
            font-weight:bold;
        }
    </style>
</head>
<body onload="CreateTable();">
    
</body>

<script>
    function CreateTable() {

        // CREATE DYNAMIC TABLE.
        var table = document.createElement('table');

        // SET THE TABLE ID. 
        // WE WOULD NEED THE ID TO TRAVERSE AND EXTRACT DATA FROM THE TABLE.
        table.setAttribute('id', 'empTable');

        var arrHead = new Array();
        arrHead = ['Emp. ID', 'Emp.Name', 'Designation'];

        var arrValue = new Array();
        arrValue.push(['1', 'Green Field', 'Accountant']);
        arrValue.push(['2', 'Arun Banik', 'Project Manager']);
        arrValue.push(['3', 'Dewane Paul', 'Programmer']);

        var tr = table.insertRow(-1);

        for (var h = 0; h < arrHead.length; h++) {
            var th = document.createElement('th');              // TABLE HEADER.
            th.innerHTML = arrHead[h];
            tr.appendChild(th);
        }

        for (var c = 0; c <= arrValue.length - 1; c++) {
            tr = table.insertRow(-1);

            for (var j = 0; j < arrHead.length; j++) {
                var td = document.createElement('td');          // TABLE DEFINITION.
                td = tr.insertCell(-1);
                td.innerHTML = arrValue[c][j];                  // ADD VALUES TO EACH CELL.
            }
        }

        // NOW CREATE AN INPUT BOX TYPE BUTTON USING createElement() METHOD.
        var button = document.createElement('input');

        // SET INPUT ATTRIBUTE 'type' AND 'value'.
        button.setAttribute('type', 'button');
        button.setAttribute('value', 'Read Table Data');

        // ADD THE BUTTON's 'onclick' EVENT.
        button.setAttribute('onclick', 'GetTableValues()');

        // FINALLY ADD THE NEWLY CREATED TABLE AND BUTTON TO THE BODY.
        document.body.appendChild(table);
        document.body.appendChild(button);
    }

    function GetTableValues() {

        var empTable = document.getElementById('empTable');

        // CREATE A DIV WHERE WE'LL SHOW THE TABLE WITH DATA.
        var div = document.createElement('div');
        div.innerHTML = "";
        div.innerHTML = '<br />';

        // TRAVERSE THROUGH THE TABLE TO XTRACT CELL VALUES.
        for (var r = 1; r <= empTable.rows.length - 1; r++) {        // EACH ROW IN THE TABLE.
            // EACH CELL IN A ROW.
            for (c = 0; c <= empTable.rows[r].cells.length - 1; c++) {      

                // ADD DATA TO THE DIV.
                div.innerHTML = div.innerHTML + ' ' +
                       empTable.rows[r].cells[c].innerHTML;

            }
            div.innerHTML = div.innerHTML + '<br />';
        }
        document.body.appendChild(div);     // APPEND (ADD) THE CONTAINER TO THE BODY.
    }
</script>
</html>