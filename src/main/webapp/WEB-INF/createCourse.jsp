<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Course - RCA</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen flex min-h-screen">
<c:import url="sidebar.jsp"></c:import>
<div class="w-4/5 p-8 flex flex-col">
    <div class="w-full flex justify-between items-center">
        <span class="font-bold text-2xl">Create A New Course</span>
        <a class="my-2 text-white flex items-center justify-center font-semibold cursor-pointer bg-blue-700 rounded-lg px-4 py-2"
           href="all-courses?page=courses&action=list">
            <box-icon name="plus" color="white"></box-icon>
            <button>View All Courses</button>
        </a>
    </div>
    <c:if test="${error != null}">
        <p>
            <span style="color: red"> ${error}</span>
        </p>
    </c:if>
    <c:if test="${success != null}">
        <p>
            <span style="color: green"> ${success}</span>
        </p>
    </c:if>
    <form action="new-course?page=createcourse" class="my-4 flex flex-col w-8/12" method="post">
        <div class="my-3 w-full">
            <label for="name" class="text-sm font-medium leading-none text-gray-800">
                Course Name
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    id="name" type="text" placeholder="Course Name" required name="name">
        </div>
        <div class="my-3 w-full">
            <label for="code" class="text-sm font-medium leading-none text-gray-800">
                Course Code
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    id="code" type="text" placeholder="Course Code" required name="code">
        </div>
        <div class="my-3 w-full">
            <label for="min" class="text-sm font-medium leading-none text-gray-800">
                Min Students
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    id="min" type="number" placeholder="Min Students" required name="min">
        </div>
        <div class="my-3 w-full">
            <label for="max" class="text-sm font-medium leading-none text-gray-800">
                Max Students
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    id="max" type="number" placeholder="Max Students" required name="max">
        </div>
        <div class="my-3 w-full">
            <label for="start" class="text-sm font-medium leading-none text-gray-800">
                Start Date
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    id="start" type="date" placeholder="Start Date" required name="start">
        </div>
        <div class="my-3 w-full">
            <label for="end" class="text-sm font-medium leading-none text-gray-800">
                End Date
            </label>
            <input
                    class="bg-gray-200 border rounded focus:outline-none text-sm font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    id="end" type="date" placeholder="End Date" required name="end">
        </div>
        <div class="mt-8">
            <button
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
</html>
