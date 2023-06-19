<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Employee - RCA</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen min-h-screen flex">
<c:import url="sidebar.jsp"></c:import>
<div class="flex w-4/5 p-8 flex-col">
    <c:if test="${authenticatedUser !=null}">
        <div class="w-full flex justify-between items-center">
            <span class="font-bold text-2xl">Employees</span>
            <div class="flex items-center">
                <a class="my-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
                   href="register?page=createuser">
                    <box-icon name="plus" color="white"></box-icon>
                    <button>Create Employee</button>
                </a>
            </div>
        </div>
        <form action="all-employees" class="my-2 flex items-center" method="get">
            <input type="text"
                   class="bg-gray-200 border mr-2 w-64 rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-4 pl-3"
                   name="id" id="id"
            />
            <button
                    role="button"
                    name="userregistrationsearch"
                    aria-label="login "
                    class="focus:ring-2 w-32 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-700 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 disabled:bg-slate-600"
                    type="submit"
            >
                Search
            </button>
        </form>
        <form action="all-employees?page=statusapproval" class="w-full flex flex-col" method="post">
            <table class="table table-bordered">
                <thead>
                <tr class="bg-blue-700 text-white">
                    <td class="px-3 py-1 text-white">ID</td>
                    <td class="px-3 py-1 text-white">Name</td>
                    <td class="px-3 py-1 text-white">Email</td>
                    <td class="px-3 py-1 text-white">Role</td>
                    <td class="px-3 py-1 text-white">Check User</td>
                    <td class="px-3 py-1 text-white" colspan="2" rowspan="1">Operation</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="usr" varStatus="usrstatus">
                    <tr>
                        <td class="px-3 py-4 border-b text-black" name="id">${usr.id}</td>
                        <td class="px-3 py-4 border-b text-black" name="fullname">${usr.fullName}</td>
                        <td class="px-3 py-4 border-b text-black" name="email" $>${usr.email}</td>
                        <td class="px-3 py-4 border-b text-black" name="role">${usr.userRole.getRoleDescription()}</td>
                        <td class="px-3 py-4 border-b text-black"><input type="checkbox" name="usrIds"
                                                                         value="${usr.id}"/></td>
                        <td class="px-3 py-4 border-b text-black"><a href="editemployee.php?page=editemployee">Edit</a>
                        </td>
                        <td class="px-3 py-4 border-b text-black"><a href="deleteuser.php?page=deleteuser">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
    </c:if>
</div>
</body>
</html>