<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Blog</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <script src="https://kit.fontawesome.com/32aa2b8683.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
            <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
        </head>

        <body>

            <div style="height: 100px;">

            </div>

            <div style="height: 700px;" class="d-flex justify-content-center">
                <div>
                    <table class="table">
                        <tr>
                            <th>회사이름</th>
                            <th>공고명</th>
                            <th>직무</th>
                        </tr>
                        <tbody id="searchBox">
                            <c:forEach items="${dtos}" var="dto">

                                <tr>
                                    <td>${dto.compname}</td>
                                    <td>${dto.title}</td>
                                    <td>${dto.comprole}</td>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>

            <div style="display:flex; justify-content: center;">

                <select id="choiceBox" style="margin-right: 5px;" onchange="getType(this)">
                    <option value="role" selected>직무</option>
                    <option value="posting">공고명</option>
                    <option value="compname">회사명</option>
                </select>
                <input id="keyword" type="text" name="">
                <button class="btn btn-primary" type="button" onclick="getKeyword()">검색</button>
                <div style="display:flex; justify-content: end;">
                    <button class="btn btn-primary" type="button" onclick="getBoard()">전체목록</button>
                </div>
            </div>


        </body>

        </html>

        <script>
            let val = "role";


            function getBoard() {
                location.href = "/chooseWhenOtherwise";
            }

            function getType(obj) {
                // console.log(obj);
                // console.log(obj.value);
                val = obj.value;
                // console.log("타입선택시 디버깅" + obj.value)
            }
            function getKeyword() {
                console.log(val);
                console.log($("#keyword").val());

                let keywordType = val;
                let keyword = $("#keyword").val();


                $.ajax({
                    type: "get",
                    url: "/typesearchtest/?keywordType=" + keywordType + "&keyword=" + keyword,
                    dataType: "json"
                }).done((arr) => {
                    // alert(arr.length);

                    $("#searchBox").empty();
                    for (let index = 0; index < arr.length; index++) {
                        let compname = arr[index].compname;
                        let title = arr[index].title;
                        let comprole = arr[index].comprole;

                        let el =
                            `<tr>
                            <td>`+ compname + `</td>
                            <td>`+ title + `</td>
                            <td>`+ comprole + `</td>
                              </tr>`
                        $("#searchBox").append(el)
                    }

                    // alert("ok");
                }).fail((err) => {
                    // alert("no");
                });
            }
        </script>