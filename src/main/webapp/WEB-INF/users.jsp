<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Users - RCA</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen min-h-screen flex">
<%@ include file="sidebar.jsp" %>
<div class="w-4/5 p-8">
    <c:if test="${authenticatedUser !=null}">
        <div class="w-full flex justify-between items-center">
            <span class="font-bold text-2xl">Users</span>
            <div class="flex items-center">
                <a class="mx-2" href="download-report?data=users">
                    <button
                            class="my-2 mx-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2">
                        <box-icon name="download" color="white" class="mr-2"></box-icon>
                        Download Excel
                    </button>
                </a>
                <a class="my-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
                   href="register?page=createuser">
                    <box-icon name="plus" color="white"></box-icon>
                    <button>Create user</button>
                </a>
            </div>
        </div>
        <form action="all-users" method="get">
            <input class="bg-gray-200 w-64 my-4 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                   type="text"
                   name="id"
                   id="id"
                   placeholder="Search..."
            />
        </form>
        <hr/>
        <form action="all-users?page=statusapproval" method="post">

            <table class="w-full">
                <thead>
                <tr class="bg-blue-700">
                    <td class="p-3 py-4 border-b text-white">ID</td>
                    <td class="p-3 py-4 border-b text-white">Name</td>
                    <td class="p-3 py-4 border-b text-white">Email</td>
                    <td class="p-3 py-4 border-b text-white">Username</td>
                    <td class="p-3 py-4 border-b text-white">Role</td>
                    <td class="p-3 py-4 border-b text-white">Check User</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="usr" varStatus="usrstatus">
                    <tr>
                        <td class="p-3 py-4 border-b text-black">${usr.id}</td>
                        <td class="p-3 py-4 border-b text-black">${usr.fullName}</td>
                        <td class="p-3 py-4 border-b text-black">${usr.email}</td>
                        <td class="p-3 py-4 border-b text-black">${usr.username}</td>
                        <td class="p-3 py-4 border-b text-black">${usr.userRole.getRoleDescription()}</td>
                        <td class="p-3 py-4 border-b text-black"><input type="checkbox" name="usrIds"
                                                                        value="${usr.id}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
    </c:if>

</div>
</body>