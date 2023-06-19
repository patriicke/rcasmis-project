<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login - RCA SMIS</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comic+Neue:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
          rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Comic+Neue:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');

        * {
            font-family: 'Lato', sans-serif;
        }
    </style>
</head>

<body>
<div class="h-screen w-screen overflow-hidden flex items-center justify-between">
    <div class="hidden h-full items-center justify-center xl:flex xl:w-3/6">
        <img src="./images/rcalogo.png" class="w-60"/>
    </div>
    <section class="flex h-full w-full items-center justify-center py-20 lg:py-[120px] xl:w-3/6">
        <div class="container mx-auto">
            <div class="-mx-4 flex flex-wrap">
                <div class="w-full px-4 ">
                    <div class="relative mx-auto max-w-[525px] overflow-hidden rounded-lg bg-white py-20 px-10 sm:px-12 md:px-[60px]">
                        <div class="flex flex-col pb-3 text-2xl font-semibold"><span>Hey,</span><span>Login Here</span>
                        </div>
                        <form action="login" method="post">
                            <div class="flex flex-col gap-4">
                                <div class="block w-full"><label>
                                    <div class="flex items-center rounded-md border text-base font-medium text-white border-primary-100">
                                        <div class="grow"><span
                                                class="relative flex w-full flex-row items-center justify-center"><input
                                                type="text" autocomplete="off"
                                                placeholder="Enter Your Username"
                                                class="md:text-md block w-full appearance-none rounded-md border-0 px-3 text-sm font-medium text-black placeholder-gray-500 focus:outline-none focus:ring-0 pl-3 h-12"
                                                name="username"><div class="absolute right-3"></div></span></div>
                                    </div>
                                </label></div>
                                <div class="block w-full"><label>
                                    <div class="flex items-center rounded-md border text-base font-medium text-white border-primary-100">
                                        <div class="grow"><span
                                                class="relative flex w-full flex-row items-center justify-center"><input
                                                type="password" autocomplete="off" placeholder="Enter Your Password"
                                                class="md:text-md block w-full appearance-none rounded-md border-0 px-3 text-sm font-medium text-black placeholder-gray-500 focus:outline-none focus:ring-0 pl-3 h-12"
                                                name="password">
                                        </span>
                                        </div>
                                    </div>
                                </label></div>
                            </div>
                            <p class="md:text-md mt-3 text-sm">Don't have an account?<a
                                    class="mx-1 text-primary-500 underline hover:underline"
                                    href="register?page=createuser">Register</a>
                            </p>
                            <c:if test="${error != null}">
                                <div class="md:text-md flex flex-col gap-4 pt-2 text-xs"><p class="text-red-600">
                                        ${error}
                                </p></div>
                            </c:if>

                            <button type="submit"
                                    class="btn w-full rounded-md border bg-blue-500 py-2 px-5 text-base text-white transition hover:bg-opacity-90 btn-md bg-primary-500 text-md mt-4 w-full font-semibold">
                                Login
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
</body>
</html>

