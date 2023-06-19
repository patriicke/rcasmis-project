<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<head>
    <title>Create Parent - RCA</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen min-h-screen flex ">
<c:import url="sidebar.jsp"></c:import>
<div class="w-4/5 p-8 flex flex-col">

    <div class="w-full flex justify-between items-center">
        <span class="font-bold text-2xl">Create a parent</span>
        <a class="my-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
           href="all-parents?page=parents&action=list">
            <box-icon name="plus" color="white"></box-icon>
            <button>Parents</button>
        </a>
    </div>

    <form action="new-parent?page=createparent" method="post" class="flex flex-col w-8/12">

        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800" for="firstName">Firstname: </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" size="25" maxlength="50"
                    name="firstName" id="firstName"/>
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800" for="lastName">Lastname: </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" size="50"
                    maxlength="50" name="lastName" id="lastName"/>
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800" for="dateOfBirth">Date of Birth: </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="date" name="dateOfBirth" id="dateOfBirth"/>

        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800" for="email">Email</label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" size="50" maxlength="50"
                    name="email" id="email"/>
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800" for="phoneNumber">Phone Number</label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="number" size="50" maxlength="50"
                    name="phoneNumber" id="phoneNumber"/>
        </div>
        <div class="my-3 w-full">
            <span class="font-bold">Gender</span>
            <label>
                <input type="radio" name="gender" value="male">
                Male
            </label>

            <label>
                <input type="radio" name="gender" value="female">
                Female
            </label>
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800" for="nid">National id number: </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="number" name="nid" id="nid" class="form-control"/>
        </div>
        <div class="mt-8">
            <button
                    name="saveStd"
                    role="button"
                    aria-label="login "
                    class="focus:ring-2 w-44 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-700 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 w-full disabled:bg-slate-600"
                    type="submit"
            >
                Register Parent
            </button>
        </div>

    </form>
</div>
