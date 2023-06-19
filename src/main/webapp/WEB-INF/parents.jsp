<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Parents - RCA </title>
</head>
<body class="w-screen min-h-screen flex">
<c:import url="sidebar.jsp"></c:import>
<div class="w-4/5 p-8 flex flex-col">

    <c:if test="${authenticatedUser !=null}">
        <div class="w-full flex justify-between items-center">
            <span class="font-bold text-2xl">Parents</span>
            <div class="flex items-center">
                <a class="my-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
                   href="new-parent?page=createparent">
                    <box-icon name="plus" color="white"></box-icon>
                    <button>Create New parent</button>
                </a>
            </div>
        </div>
        <form action="all-parents?page=statusapproval" method="post" class="form-group">

            <table class="w-full">
                <thead class="bg-blue-700 text-white">
                <tr>
                    <td class="px-3 py-1 text-white">Firstname</td>
                    <td class="px-3 py-1 text-white">Lastname</td>
                    <td class="px-3 py-1 text-white">Gender</td>
                    <td class="px-3 py-1 text-white">Email</td>
                    <td class="px-3 py-1 text-white">Phone Number</td>
                    <td class="px-3 py-1 text-white">NID</td>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${parents}" var="prt" varStatus="prtstatus">
                    <tr>
                        <td class="px-3 py-4 border-b text-black">${prt.getFirstName()}</td>
                        <td class="px-3 py-4 border-b text-black">${prt.getLastName()}</td>
                        <td class="px-3 py-4 border-b text-black">${prt.getGender()}</td>
                        <td class="px-3 py-4 border-b text-black">${prt.getEmail()}</td>
                        <td class="px-3 py-4 border-b text-black">${prt.getPhoneNumber()}</td>
                        <td class="px-3 py-4 border-b text-black">${prt.getNid()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
    </c:if>
</div>
