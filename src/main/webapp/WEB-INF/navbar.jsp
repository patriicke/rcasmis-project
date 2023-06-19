<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="w-full px-3 flex">
s  <div class="flex my-4 flex-col">
    <div class="my-4 flex flex-col">
      <span>Creation</span>
      <div class="pl-3 flex flex-col">
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="register?page=createuser">
          <button>Create user</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="new-student?page=createstudent">
          <button>Create student</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="new-course?page=createcourse">
          <button>Create course</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="new-parent?page=createparent">
          <button>Create parent</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="new-mark?page=createmark">
          <button>Create mark</button>
        </a>
      </div>
    </div>
    <div class="my-4 flex flex-col">
      <span>View</span>
      <div class="pl-3 flex flex-col">
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="all-users?page=users&action=list">
          <button>Users</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="all-employees?page=employees&action=list">
          <button>All Employees</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="all-students?page=students&action=list">
          <button>Students</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="all-parents?page=parents&action=list">
          <button>Parents</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="all-courses?page=courses&action=list">
          <button>Courses</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="all-marks?page=marks&action=list">
          <button>Marks</button>
        </a>
      </div>
    </div>

    <div class="my-4 flex flex-col">
      <span>Reports</span>
      <div class="pl-3 flex flex-col">
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="student/txt-report?page=studenttxt">
          <button>Students Reports</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="course?page=coursetxt">
          <button>Course Reports</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="instructorspdf.php?">
          <button>Course Reports</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="instructorspdf.php?">
          <button> All Instructors PDF</button>
        </a>
        <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
           href="student/txt-report?page=studenttxt">
          <button> All Students PDF</button>
        </a>
      </div>
    </div>
  </div>
  <c:choose>
    <c:when
            test="${authenticatedUser !=null && authenticatedUser.userRole eq 'EMPLOYEE'}">
      <c:choose>
        <c:when
                test="${authenticatedUser !=null}">

          <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
             href="all-instructors?page=instructors&&user_role=empl&action=list">
            <button>Instructors</button>
          </a>
          <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
             href="all-evaluations?page=evaluations&action=list">
            <button>Discipline Status</button>
          </a>
          <a class="my-2 text-white w-7/12 font-bold cursor-pointer bg-blue-700 rounded-lg px-4 py-1"
             href="all-evaluations?page=evaluations&action=list">
            <button>Marks Records</button>
          </a>
        </c:when>
        <c:otherwise>

        </c:otherwise>
      </c:choose>
    </c:when>
    <c:when
            test="${authenticatedUser !=null && authenticatedUser.userRole eq 'ADMINISTRATOR'}">
      <div class="flex flex-col w-full items-center mt-10">
        <div class="flex w-7/12 flex-col items-center mt-10">
          <a href="all-users?page=profile&&id=${authenticatedUser.id}">
            <button class="bg-blue-600 hover:bg-blue-900 text-white font-bold py-2 px-4 rounded">Profile
            </button>
          </a>
          <a href="login?logout=logout">
            <button class="bg-blue-600 hover:bg-blue-900 text-white font-bold py-2 px-4 rounded">Logout
            </button>
          </a>
        </div>
      </div>
    </c:when>

    <c:otherwise>

    </c:otherwise>
  </c:choose>

</div>


