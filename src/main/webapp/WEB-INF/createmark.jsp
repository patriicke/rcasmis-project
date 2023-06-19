<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<head>
    <title>Create Mark - RCA</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen min-h-screen flex">
<c:import url="sidebar.jsp"></c:import>
<div class="w-4/5 p-8 flex flex-col">
    <div class="w-full flex justify-between items-center">
        <span class="font-bold text-2xl">Create new mark</span>
        <a class="my-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
           href="all-marks?page=listmarks&action=list">
            <box-icon name="plus" color="white"></box-icon>
            <button>All marks</button>
        </a>
    </div>
    <c:if test="${message != null}">
        <fieldset>
            <h3><span style="color: red"> ${message}</span></h3>
        </fieldset>
    </c:if>

    <form class="w-8/12 flex flex-col" action="new-mark?page=createmark" method="post">
        <div class="my-3 w-full">

            <label class="text-sm font-medium leading-none text-gray-800" for="studentname">Student Name</label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" size="25" maxlength="50" name="studentname" id="studentname"/>
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800" for="subject">Phone Number</label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" size="25" maxlength="50" name="subject" id="subject"/>
        </div>
        <div class="my-3 w-full">
            <label class="text-sm font-medium leading-none text-gray-800" for="marksobtained">Marks Obtained</label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="number" size="50" maxlength="50" name="marksobtained" id="marksobtained"/>
        </div>
        <div class="mt-8">
            <button
                    name="saveStd"
                    role="button"
                    class="focus:ring-2 w-44 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-700 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 w-full disabled:bg-slate-600"
                    type="submit"
            >
                Register
            </button>
        </div>
        <a href="all-marks?page=marks&action=list" class="my-6 text-blue-600">View all marks </a>
    </form>
</div>
</body>

