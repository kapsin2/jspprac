function jqgrid() {
        
   $("#jqGrid").jqGrid({
        url:"/jqgrids",
       datatype: "json",
       mtype:"GET",
       height: 500, 
       width: 1000,
       colNames : ['seq','1번','2번','3번','4번','5번','6번','7번','8번'], 

       colModel:[
           {name:"seq",
           index:"seq",
           width:10,
           align:'center',
           hidden:false
           },

           {name : 'one',
           index : 'one',
           width : 15, 
           align : 'left',
           hidden:false,
           },

           {name : 'two',
           index : 'two',
           width : 15, 
           align : 'left',
           hidden:false
           },

           {name : 'three',
           index : 'three',
           width : 70, 
           resizable : true,
           align : 'left',
           hidden:false
           },

           {name : 'four',
           index : 'four',
           width : 15, 
           align : 'center',
           hidden:false
           },

           {name : 'five',
           index : 'five',
           width : 15, 
           align : 'center',
           hidden:false
           },
        
           {name : 'six',
           index : 'six',
           width : 15, 
           align : 'center',
           hidden:false
           },
           {name : 'seven',
           index : 'seven',
           width : 15, 
           align : 'center',
           hidden:false
           },
           {name : 'eight',
           index : 'eight',
           width : 15, 
           align : 'center',
           hidden:false
           }],


       pager:"#gridpager",
       rowList:[10,20,30],
       rowNum:10,
       }); 
}