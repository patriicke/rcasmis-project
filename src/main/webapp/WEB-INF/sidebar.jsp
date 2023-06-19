<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="w-1/6 px-3 h-screen justify-between overflow-hidden bg-white pb-8 flex flex-col border-r-2">
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
    <div class="w-full h-24 flex items-center justify-center">
        <img src="./images/rcalogo.png" class="w-24"/>
    </div>
    <div class="flex my-4 flex-col">
        <div class="pl-3 flex flex-col">
            <a class="my-2 text-black w-9/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2 text-blue-500"
               href="all-users?page=users&action=list">
                <button class="flex items-center">
                    <box-icon name="group" color="rgb(59, 130, 246)"></box-icon>
                    <span class="ml-2">Users</span>
                </button>
            </a>
            <a class="my-2 text-black w-9/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2 text-blue-500"
               href="all-employees?page=employees&action=list">
                <button class="flex items-center">
                    <box-icon name="group" color="rgb(59, 130, 246)"></box-icon>
                    <span class="ml-2">Employees</span>
                </button>
            </a>
            <a class="my-2 text-black w-9/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2 text-blue-500"
               href="all-students?page=students&action=list">
                <button class="flex items-center">
                    <box-icon name="group" color="rgb(59, 130, 246)"></box-icon>
                    <span class="ml-2">Students</span>
                </button>
            </a>
            <a class="my-2 text-black w-9/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2 text-blue-500"
               href="all-parents?page=parents&action=list">
                <button class="flex items-center">
                    <box-icon name="group" color="rgb(59, 130, 246)"></box-icon>
                    <span class="ml-2">Parents</span>
                </button>
            </a>
            <a class="my-2 text-black w-9/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2 text-blue-500"
               href="all-courses?page=courses&action=list">
                <button class="flex items-center">
                    <box-icon name="group" color="rgb(59, 130, 246)"></box-icon>
                    <span class="ml-2">Courses</span>
                </button>
            </a>
            <a class="my-2 text-black w-9/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2 text-blue-500"
               href="all-marks?page=marks&action=list">
                <button class="flex items-center">
                    <box-icon name="group" color="rgb(59, 130, 246)"></box-icon>
                    <span class="ml-2">Marks</span>
                </button>
            </a>
        </div>
    </div>
    <a class="my-2 text-black w-9/12 font-semibold cursor-pointer hover:bg-slate-300 rounded-lg px-4 py-2 text-blue-500"
       href="login?logout=logout">
        <button class="flex items-center">
            <box-icon name="exit" color="rgb(59, 130, 246)"></box-icon>
            <span class="ml-2">Logout</span>
        </button>
    </a>
</div>


