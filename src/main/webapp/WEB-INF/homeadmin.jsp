<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <title>Home Admin - RCA Management</title>
    <script d src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <style>
        .swiper-container {
            width: 100%;
            height: 400px;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js" defer></script>
    <script crossorigin="anonymous" defer>
        var swiper = new Swiper('.swiper-container', {
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
        });
    </script>
</head>
<body class="w-screen min-h-screen flex overflow-hidden">
<jsp:include page="sidebar.jsp"></jsp:include>
<div class="w-4/5 p-8 flex flex-col">
    <span class="font-bold text-2xl">RCA SMIS Dashboard</span>
    <div class="h-full w-full">
        <img src="https://igihe.com/IMG/logo/fze0ub9wiaqkwvj.jpg?1659975164" class="object-fit" >
    </div>
</div>
</body>
