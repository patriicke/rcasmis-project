<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <title>Marks - RCA</title>
</head>
<body class="w-screen min-h-screen flex">
<c:import url="sidebar.jsp"></c:import>
<div class="flex flex-col w-4/5 p-8">

    <c:if test="${authenticatedUser !=null}">
        <div class="w-full flex items-center justify-between">
            <span class="font-bold text-2xl">All Marks</span>
            <div class="flex items-center">
                <a class="mx-2" href="new-mark?page=createmark">
                    <button
                            class="focus:ring-2 px-3 w-44 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-700 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 w-full disabled:bg-slate-600"
                    >
                        Add Marks
                    </button>
                </a>
            </div>
        </div>
        <hr/>
        <table style="border: 0;">
            <td align="left"><input type="text" size="15"
                                    maxlength="50" readonly="readonly" name="savedBy" id="savedBy"
                                    hidden="hidden" value="${authenticatedUser.id}"/></td>
            <table>
                <thead class="bg-blue-600 text-white">
                <tr>
                    <td class="text-white px-3 py-1">Student Name</td>
                    <td class="text-white px-3 py-1">Subject</td>
                    <td class="text-white px-3 py-1">Marks</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${marks}" var="mrk" varStatus="mrkstatus">
                    <tr>
                        <td class="text-black px-3 py-4 border-b">${mrk.getStudentName()}</td>
                        <td class="text-black px-3 py-4 border-b">${mrk.getSubject()}</td>
                        <td class="text-black px-3 py-4 border-b">${mrk.getMarksObtained()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </table>

    </c:if>
</div>
</body>
</html>

