<%-- 
    Document   : ConsDisease_Insert
    Created on : Dec 3, 2018, 10:39:35 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dynamically Add Remove Table Rows in JavaScript</title>

    <style>
        table 
        {
            width: 70%;
            font: 17px Calibri;
        }
        table, th, td 
        {
            border: solid 1px #DDD;
            border-collapse: collapse;
            padding: 2px 3px;
            text-align: center;
        }
    </style>
</head>
<body onload="createTable()">
    <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
    <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
    
    <ps>Click the "Add New Row" button to add row to the table. Enter values in each row and press the "Submit Data" button. You can check the result in your browsers console window.</p>
    <form action="ConsDisease_Insert_Controller.jsp" method="post" onsubmit="return checkForm(this);">
        <!--THE CONTAINER WHERE WE'll ADD THE DYNAMIC TABLE-->
        <div id="cont"></div>
    </form>
    <input type="button" id="addRow" value="Add New Row" onclick="addRow()" />
    <input type="button" id="bt" value="Sumbit Data" onclick="sumbit()" />
</body>

<table>
    <tr>
                <td>Id Medical Act</td>
                <td>Id Disease</td>
            </tr>
            <tr>
                <td><%=(idMedicalAct)%></td>
                <td>Id Disease</td>
                <td><select id="chooseDisease" name="chooseDisease">                           
                       <option value="0">Select Disease</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.Diseases;"); 
                                    int choosenDisease = 0;
                                    while (rs.next())
                                    { %>
                                        <option value="<%=rs.getInt("iddisease") %>" 
                                                      ><%=rs.getString("diseaseName")%>
                                        </opion>  
                                      <%
                                    }      
                                } 
                                catch (Exception ex) 
                                { ex.printStackTrace();
                                  out.println("error " + ex.getMessage());
                                }
                            %>
                    </select>
                </td>   
            </tr>
    <tr>
        <td>When?</td>
        <td><input type="text" id="when">
        <input type="button" id="add" value="Add" onclick="Javascript:addRow()"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

<div id="mydata">
<table id="myTableData"  border="1" cellpadding="2">
    <tr>
        <td>&nbsp;</td>
        <td><b>Medicine Name</b></td>
        <td><b>Medicine Time&nbsp</b></td>
        <td><b>Medicine Duration</b></td>
        <td><b>Medicine When?</b></td>
    </tr>
</table>

    <script>    
    
function addRow() {

    var medicinename = document.getElementById("medicinename");
    var time = document.getElementById("time");
    var duration = document.getElementById("duration");
    var when = document.getElementById("when");
    var table = document.getElementById("myTableData");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);

    row.insertCell(0).innerHTML= '<input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)">';
    row.insertCell(1).innerHTML= '<input type="text" name="'+'rowMedicine'+rowCount+'" value="'+medicinename.value+'" readonly />';
    row.insertCell(2).innerHTML= '<input type="text" name="'+'rowTime'+rowCount+'" value="'+time.value+'" readonly />';
    row.insertCell(3).innerHTML= '<input type="text" name="'+'rowDuration'+rowCount+'" value="'+duration.value+'" readonly />';
    row.insertCell(4).innerHTML= '<input type="text" name="'+'rowWhen'+rowCount+'" value="'+when.value+'" readonly />';
    document.getElementById('medicinename').value='';
    document.getElementById('time').value='';
    document.getElementById('duration').value='';
    document.getElementById('when').value='';
}

function deleteRow(obj) {

    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("myTableData");
    table.deleteRow(index);
}

function addTable() {

    var myTableDiv = document.getElementById("myDynamicTable");

    var table = document.createElement('TABLE');
    table.border='1';

    var tableBody = document.createElement('TBODY');
    table.appendChild(tableBody);

    for (var i=0; i<3; i++){
       var tr = document.createElement('TR');
       tableBody.appendChild(tr);

       for (var j=0; j<4; j++){
           var td = document.createElement('TD');
           td.width='75';
           td.appendChild(document.createTextNode("Cell " + i + "," + j));
           tr.appendChild(td);
       }
    }
    myTableDiv.appendChild(table);

}     

</script>


<script>
    // ARRAY FOR HEADER.
    var arrHead = new Array();
    arrHead = ['', Id Consulttion', 'Id Disease'];      // SIMPLY ADD OR REMOVE VALUES IN THE ARRAY FOR TABLE HEADERS.

    // FIRST CREATE A TABLE STRUCTURE BY ADDING A FEW HEADERS AND
    // ADD THE TABLE TO YOUR WEB PAGE.
    function createTable() {
        var consDiseaseTable = document.createElement('table');
        consDiseaseTable.setAttribute('id', 'consDiseaseTable');            // SET THE TABLE ID.

        var tr = consDiseaseTable.insertRow(-1);

        for (var h = 0; h < arrHead.length; h++) {
            var th = document.createElement('th');          // TABLE HEADER.
            th.innerHTML = arrHead[h];
            tr.appendChild(th);
        }

        var div = document.getElementById('cont');
        div.appendChild(consDiseaseTable);    // ADD THE TABLE TO YOUR WEB PAGE.
    }

    // ADD A NEW ROW TO THE TABLE.s
    function addRow() {
        var consDiseaseTab = document.getElementById('consDiseaseTable');

        var rowCnt = consDiseaseTable.rows.length;        // GET TABLE ROW COUNT.
        var tr = consDiseaseTable.insertRow(rowCnt);      // TABLE ROW.
        tr = consDiseaseTable.insertRow(rowCnt);

        for (var c = 0; c < arrHead.length; c++) {
            var td = document.createElement('td');          // TABLE DEFINITION.
            td = tr.insertCell(c);

            if (c == 0) {           // FIRST COLUMN.
                // ADD A BUTTON.
                var button = document.createElement('input');

                // SET INPUT ATTRIBUTE.
                button.setAttribute('type', 'button');
                button.setAttribute('value', 'Remove');

                // ADD THE BUTTON's 'onclick' EVENT.
                button.setAttribute('onclick', 'removeRow(this)');

                td.appendChild(button);
            }
            else {
                // CREATE AND ADD TEXTBOX IN EACH CELL.
                var ele = document.createElement('input');
                ele.setAttribute('type', 'text');
                ele.setAttribute('value', '');

                td.appendChild(ele);
            }
        }
    }

    // DELETE TABLE ROW.
    function removeRow(oButton) {
        var consDiseaseTab = document.getElementById('consDiseaseTable');
        consDiseaseTable.deleteRow(oButton.parentNode.parentNode.rowIndex);       // BUTTON -> TD -> TR.
    }

    // EXTRACT AND SUBMIT TABLE DATA.
    function sumbit() {
        var myTab = document.getElementById('consDiseaseTable');
        var values = new Array();

        // LOOP THROUGH EACH ROW OF THE TABLE.
        for (row = 1; row < myTab.rows.length - 1; row++) {
            for (c = 0; c < myTab.rows[row].cells.length; c++) {   // EACH CELL IN A ROW.

                var element = myTab.rows.item(row).cells[c];
                if (element.childNodes[0].getAttribute('type') == 'text') {
                    values.push("'" + element.childNodes[0].value + "'");
                }
            }
        }
        console.log(values);
    }
</script>
</html>
