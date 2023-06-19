<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Course Registrations - RCA</title>
    <script src="https://cdn.tailwindcss.com"></script>

</head>
<body class="w-screen min-h-screen flex">
<c:import url="sidebar.jsp"></c:import>
<div class="w-4/5 p-8">
    <c:if test="${authenticatedUser !=null}">
        <div class="w-full flex justify-between items-center">
            <span class="font-bold text-2xl">Courses</span>
            <div class="flex items-center">
                <a class="my-2 mx-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
                   href="new-course?page=createcourse">
                    <box-icon name="plus" color="white"></box-icon>
                    <button>Create Course</button>
                </a>
            </div>
        </div>

        <form action="all-courses?page=courses&action=list" class="flex items-center " method="get">
            <input class="bg-gray-200 w-64 my-4 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-4 mr-2 w-full pl-3"
                   type="text"
                   name="id"
                   id="id"
                   placeholder="Search...."
            />
            <button
                    role="button"
                    name="courseSearch"
                    aria-label="login "
                    class="focus:ring-2 w-32 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-700 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 disabled:bg-slate-600"
                    type="submit"
            >Search
            </button>
        </form>
        <hr/>
        <table class="w-full">
            <thead>
            <tr class="bg-blue-600 text-whit">
                <td class="px-3 py-1 text-white">ID</td>
                <td class="px-3 py-1 text-white">Name</td>
                <td class="px-3 py-1 text-white">Code</td>
                <td class="px-3 py-1 text-white">Min Students</td>
                <td class="px-3 py-1 text-white">Max Students</td>
                <td class="px-3 py-1 text-white">Date Start</td>
                <td class="px-3 py-1 text-white">Date End</td>
                    <%--              <td class="px-3 py-1 text-white">isCancelled</td>--%>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${courses}" var="csr" varStatus="usrstatus">
                <tr>
                    <td class="px-3 py-4 text-black border-b">${csr.id}</td>
                    <td class="px-3 py-4 text-black border-b">${csr.name}</td>
                    <td class="px-3 py-4 text-black border-b">${csr.code}</td>
                    <td class="px-3 py-4 text-black border-b">${csr.minStudent}</td>
                    <td class="px-3 py-4 text-black border-b">${csr.maxStudent}</td>
                    <td class="px-3 py-4 text-black border-b">${csr.start}</td>
                    <td class="px-3 py-4 text-black border-b">${csr.end}</td>
                        <%--                <td>${csr.isCancelled}</td>--%>
                    <td><input type="checkbox" name="usrIds"
                               value="${usr.id}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>
</body>
</html>