<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>RCA Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="w-screen h-screen overflow-hidden flex flex-col gap-2">
    <div class="h-16 flex items-center justify-between px-24 py-3">
        <div class="font-bold text-2xl">
            <img src="./images/rcalogo.png" class="w-16"/>
        </div>
        <div class="flex items-center gap-2 bg-">
            <a href="login?page=login" class="mx-2">
                <button class="border-blue-600 rounded-xl border-2 bg-blue-700 text-white  px-4 py-2 cursor-pointer">
                    Login
                </button>
            </a>
            <a href="register?page=createuser" class="mx-2">
                <button class="border-blue-600 rounded-xl border-2 bg-blue-700 text-white  px-4 py-2 cursor-pointer">
                    Sign up
                </button>
            </a>
        </div>
    </div>
    <div class="h-[calc(100%-_-24px)] w-full">
        <img src="https://lh3.googleusercontent.com/p/AF1QipNNPL2aV5dMCSz1Ex8qTkMGRIDqcUIMsruEeFq9=s1360-w1360-h1020"
             class="w-full h-full object-cover" alt="images"/>
    </div>
</div>
</body>
</html>