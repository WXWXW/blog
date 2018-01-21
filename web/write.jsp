<%--
  Created by IntelliJ IDEA.
  User: 13179
  Date: 2017/12/7
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage</title>
    <script type="text/javascript"src="utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript"src="utf8-jsp/ueditor.all.js"></script>
    <script type="text/javascript" charset="utf-8" src="addCustomizeButton.js"></script>
    <link rel="stylesheet" type="text/css" src="./static/mycss/manage.css">
    <script>
        var now=new Date();
        function getdate() {
            var x=now.getFullYear();
            var y=(now.getMonth()+1)<10?"0"+(now.getMonth()+1):(now.getMonth()+1);
            var z=(now.getDate())<10?"0"+(now.getDate()+1):(now.getDate());
                alert(x+"-"+y+"-"+z);
            return x+"-"+y+"-"+z;
        }
        $('input[type=date]').val(getdate());
    </script>  
</head>
<body>
        <%@include file="common/header.jsp" %>
        <div style="background-color:#96b6d2; height:1000px">
        <form action="./handblog" method="post">
                <div style="margin-left:800px;">
                    title<input type="text" name="title" id="title">
                    time<input type="date" name="time" id="time"  style="margin-left:30px">
                </div>
                <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto;">
                    <tr>
                        <td><script id="editor" type="text/plain" style="width:1024px;height:500px;"></script></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="submit" value="提交" style="">></td>
                    </tr>
                </table>
        </form>
        </div>
</body>
    <script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    </script>
</html>
