<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome to RCA Management</title>
	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen min-h-full flex flex-col justify-center items-center"
	  style="background-size: cover;background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHN0dWRlbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=2400&q=60') no-repeat fixed center;">
<div class="absolute  top-0 left-0 right-0 w-full bg-white flex items-center justify-between px-24 py-3">
	<span class="font-bold text-2xl">RCA Management App</span>
	<div class=" flex items-center">
		<a href="login?page=login" class="mx-2">
			<button class="border-blue-700 rounded-xl border-2 px-3 py-4 cursor-pointer font-semibold text-blue-700">
				Login
			</button>
		</a>
		<a href="register?page=createuser" class="mx-2">
			<button class="border-blue-600 rounded-xl border-2 bg-blue-700 text-white font-semibold px-4 py-2 cursor-pointer">
				Register
			</button>
		</a>
	</div>
</div>
<span class="text-white text-3xl font-extrabold">The best way to manage RCA students with ease.</span>
<span class="flex items-center justify-center">Powered by <a class="font-bold" href="https://github.com/mugishap">mugishap</a></span>
</body>
</html>