<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<head>
    <title>Create Student - RCA</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen flex min-h-screen">
<jsp:include page="sidebar.jsp"></jsp:include>
<div class=" p-8 w-4/5 flex flex flex-col">
    <div class="w-full flex justify-between items-center">
        <span class="font-bold text-2xl">Create New Student</span>
        <a class="my-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
           href="all-students?page=students&action-list">
            <box-icon name="plus" color="white"></box-icon>
            <button>Students</button>
        </a>
    </div>    <form action="new-student?page=createstudent" class="flex flex-col w-8/12" method="post">
        <div class="my-3 w-full">
            <label for="firstName" class="text-sm font-medium leading-none text-gray-800">
                Student First Name
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" name="firstName" id="firstName" placeholder="Enter student's first name" required
            />
        </div>
        <div class="my-3 w-full">
            <label for="lastName" class="text-sm font-medium leading-none text-gray-800">
                Student Last Name
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" name="lastName" id="lastName" placeholder="Enter student's last name" required
            />
        </div>
        <div class="my-3 w-full">
            <label for="gender" class="text-sm font-medium leading-none text-gray-800">
                Student Gender
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" name="gender" id="gender" placeholder="Enter student's gender"
            />
        </div>
        <div class="my-3 w-full">
            <label for="email" class="text-sm font-medium leading-none text-gray-800">
                Email
            </label>
            <input
                    aria-label="enter email address"
                    type="text"
                    id="email"
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    placeholder="Enter student's email"
                    name="email"
            />
        </div>
        <div class="my-3 w-full">
            <label for="dateOfBirth" class="text-sm font-medium leading-none text-gray-800">
                Date Of Birth
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="date" name="dateOfBirth" id="dateOfBirth" placeholder="Enter student's date of birth"
                    required
            >
        </div>
        <div class="my-3 w-full">
            <label for="address" class="text-sm font-medium leading-none text-gray-800">
                Address ID
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="number" name="address" id="address" placeholder="Enter address ID"
                    required
            >
        </div>
        <div class="my-3 w-full">
            <label for="phoneNumber" class="text-sm font-medium leading-none text-gray-800">
                Phone Number
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    type="text" name="phoneNumber" id="phoneNumber" placeholder="Enter student's phone number"
                    required
            >
        </div>

        <div class="mt-8">
            <button
                    name="saveStd"
                    role="button"
                    aria-label="login "
                    class="focus:ring-2 w-44 flex items-center justify-center focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-700 border rounded hover:bg-blue-800 duration-1000 hover:animate-ring py-4 w-full disabled:bg-slate-600"
                    type="submit"
            >
                Register
            </button>
        </div>
    </form>
</div>
</body>
