<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Students - RCA</title>
</head>
<body class="w-screen min-h-screen flex">
<c:import url="sidebar.jsp"></c:import>
<div class="w-4/5 p-8 flex flex-col">
    <c:if test="${authenticatedUser !=null}">
    <div class="w-full my-4 flex justify-between items-center">
        <span class="font-bold text-2xl">Students</span>
        <div class="flex items-center">
            <a class="my-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
               href="new-student?page=createstudent">
                <box-icon name="plus" color="white"></box-icon>
                <button>Create New student</button>
            </a>
        </div>
    </div>
    <div class="w-full flex justify-between items-center">

        <form action="all-students?page=statusapproval" method="post" class="w-full form-group">

            <table class="w-full table table-bordered">
                <thead>
                <tr class="bg-blue-700 text-white font-bold">
                    <td class="px-3 py-1 text-white">ID</td>
                    <td class="px-3 py-1 text-white">Firstname</td>
                    <td class="px-3 py-1 text-white">Lastname</td>
                    <td class="px-3 py-1 text-white">Gender</td>
                    <td class="px-3 py-1 text-white">Email</td>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${students}" var="std" varStatus="stdstatus">
                    <tr>
                        <td class="px-3 py-4 border-b text-black">${std.getId()}</td>
                        <td class="px-3 py-4 border-b text-black">${std.getFirstName()}</td>
                        <td class="px-3 py-4 border-b text-black">${std.getLastName()}</td>
                        <td class="px-3 py-4 border-b text-black">${std.getGender()}</td>
                        <td class="px-3 py-4 border-b text-black">${std.getEmail()}</td>
                        <td class="px-3 py-4 border-b text-black">${std.getAddress()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
        </c:if>
    </div>






