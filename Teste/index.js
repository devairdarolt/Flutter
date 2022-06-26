$("#console").on("keyup", function(e) {
    sendToBackLayer(e);
    // console.log("O valor do select mudou para: " + $("#console").val());
    // console.log("key code: " + e.keyCode);
    if (e.keyCode == 8 && e.ctrlKey) {
        $("#console").val("");
    }
    if (e.keyCode == 13 && e.ctrlKey) {
        //alert("iniciar?");
        //loading(true);
        fetchSQL();
        //loading(false);
        //alert("terminar?");
    }

    if ((e.keyCode == 32) && e.ctrlKey) {
        //$("#console").val(parseSQL($("#console").val()));
    }
});


function sendToBackLayer(e){
    var input = $("#console").val();
    var arrayWords = input.split(" ");
    var outputArrayWords = [];
    $("#console-output").html()

    for(var i = 0; i < arrayWords.length; i++){
        if(arrayWords[i].toLocaleLowerCase() == "select"){            
            var element = $("<span>").attr({id: 'keyword_'+i, class: 'keyword'}).text(arrayWords[i].toUpperCase());
            outputArrayWords.push(element);
        }else{
            var element = $("<span>").attr({id: 'word_'+i, class: 'word'}).text(arrayWords[i]);
            outputArrayWords.push(element);
        }
    }
    
    for(var i = 0; i < outputArrayWords.length; i++){
        var word = outputArrayWords[i];
        $("#console-output").append(word);
    }
    
}

function fetchSQL(){
    
    var result = [];
    var nrCols = 50;
    var nrRows = 500;
    
    var thead = [];

    thread = [];
    for(var i = 0; i < nrCols; i++){
        thread.push("COLUNA_"+i);
    }
    result.push(thread);
    
    var row =[] 
    for(var i = 0; i < nrRows; i++){        
        row = [];        
        for(var j = 0; j < nrCols; j++){
            row.push("ROW_"+i+"_COL_"+j);
        }           
        result.push(row);
    }   

    //console.log(result);
    buildResultTable(result);
}

function buildResultTable(result){
    var table = $("#result-table");
    table.empty();
    var thead = $("<thead>");
    var tr = $("<tr>");
    for(var i = 0; i < result[0].length; i++){
        var th = $("<th>");
        th.text(result[0][i]);
        tr.append(th);
    }
    thead.append(tr);
    table.append(thead);

    var tbody = $("<tbody>");
    for(var i = 1; i < result.length; i++){
        var tr = $("<tr>");
        for(var j = 0; j < result[i].length; j++){
            var td = $("<td>");
            td.text(result[i][j]);
            tr.append(td);
        }
        tbody.append(tr);
    }
    table.append(tbody);
}

function parseSQL(str) {
    var checkpoint = str;
    var str = str.replace(/\s+/g, ' ');
    var candidates = [];
    var SQL_WORD = {
        "select": "SELECT",
        "from": "FROM",
        "where": "WHERE",
        "and": "AND",
        "or": "OR",
        "order": "ORDER BY",
        "group": "GROUP BY",
        "limit": "LIMIT",
        "where": "WHERE",
        "left": "LEFT JOIN",
        "right": "RIGHT JOIN",
        "inner": "INNER JOIN",
        "outer": "OUTER JOIN",
        "join": "JOIN",
        "on": "ON ()",
        "as": "AS",
        "desc": "DESC",
        "asc": "ASC",
        "null": "NULL",
        "not": "NOT",
        "like": "LIKE",
        "in": "IN ()",
        "between": "BETWEEN",
        "case": "CASE",
        "when": "WHEN",
        "then": "THEN",



                
    }

    var TABLE_NAME = {
        "users": "users u",
        "orders": "orders o",
        "products": "products p",
        "categories": "categories c",
        "order_items": "order_items oi",
        "product_items": "product_items pi",
        "categories_products": "categories_products cp",
    }

    var str_array = str.split(" ");
    //get last word from array
    var last_word = str_array[str_array.length - 1];
    
    //find last word in SQL_WORD or TABLE_NAME
    var last_word_type = "";
    for (var key in SQL_WORD) {
        if (key.toLocaleLowerCase().includes(last_word.toLocaleLowerCase())) {
            candidates.push(SQL_WORD[key]);
            break;
        }
    }
    if (last_word_type == "") {
        for (var key in TABLE_NAME) {
            if (key.toLocaleLowerCase().includes(last_word.toLocaleLowerCase())) {
                candidates.push(TABLE_NAME[key]);
                break;
            }
        }
    }

    //sort candidates
    candidates.sort();

    if(candidates.length > 0){
        checkpoint = checkpoint.replace(last_word, candidates[0]);
    }
    return checkpoint;
}
            


// $("#console").on("keyUp", function() {
//     console.log("O valor do select mudou para: " + $("#console").val());
// });


$("#btn-cancel").click(function() {
    $("#btn-cancel").attr("disabled", true);    
    $("#console").val("");
    
});

$("#btn-run").click(function() {
    $("#btn-run").attr("disabled", true);
    var cValue = $("#console").val();
    var cElement = $("#console");
    //parse consoleValue and replase all \n by space
    var cValue = cValue.replace(/\n/g, " ");
    
    cElement.val(cValue);
    

});

$("#loginBtn").click(function(){
    debugger;
    var email = $("#email").val();
    var senha = $("#senha").val();
    var data = {
        email: email,
        senha: senha
    };
    $.ajax({
        url: "http://localhost:3000/login",
        type: "POST",
        data: data,
        success: function(data){
            if(data.status == "success"){
                window.location.href = "http://localhost:3000/home";
            }else{
                alert("Login ou senha incorretos");
            }
        },
        error: function(data){
            alert("Erro ao realizar login");
        }
    });
});

function loading(activate){
    if(activate){
        $("#loading").show();        
    }else{
        $("#loading").hide();
    }
}