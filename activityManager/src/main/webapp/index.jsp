<!DOCTYPE html>
<%@page import="com.view.DBView"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Css/style1.css">
    <script src="https://kit.fontawesome.com/224d424ebb.js" crossorigin="anonymous"></script>
</head>

<body>


    <div class="container">
        <aside class="sidebar-left">
        </aside>
        <aside class="sidebar-right">
            <div class="top">

            </div>
            <div class="main">

                <!-- backlog div -->
                <%-- <div class="backlog section">
                    <div class="headings">
                        <div class="head-text">Backlog</div>
                    </div>
                    <div class="tasks">
                         <%
                        	List<Note> list1=DBView.selectAllBacklog();
                        	for(Note note:list1){	
                        %>
                        	
                        <div class="task">
                            <div class="title-dash">
                                <%=note.getTitle()%>
                            </div>
                            <div class="description-dash">
                                <%=note.getContent()%>
                            </div>
                            <a href="DeleteServlet?note_id=<%= note.getId()%>"><i class="fas fa-trash btn-note remove btn-up"></i></a>
                            <a href="MoveToDoing?note_id=<%= note.getId()%>"><i class="fas fa-share btn-note move btn-mid"></i></a>
                            <i class="fas fa-ellipsis-h btn-note more btn-down"></i>
                        </div>
                        
                        <%
                        	}
                        %>
                    </div>
                </div> --%>

                <!-- planning div -->
                <div class="planning section">
                    <div class="headings">
                        <div class="head-text">Planning</div>

                        <div class="btn-note add">
                            <i class="fas fa-plus-circle "></i>
                        </div>
                        <!-- <button class="remove">
                            <i class="fa-solid fa-circle-trash"></i>
                        </button> -->
                    </div>
                    <div class="tasks">
                        
                        <%
                        	List<Note> list2=DBView.selectAllPlan();
                        	for(Note note:list2){	
                        %>
                        	
                        <div class="task">
                            <div class="title-dash">
                                <%=note.getTitle()%>
                            </div>
                            <div class="description-dash">
                                <%=note.getContent()%>
                            </div>
                            <a href="DeleteServlet?note_id=<%= note.getId()%>"><i class="fas fa-trash btn-note remove btn-up"></i></a>
                            <a href="MoveToDoing?note_id=<%= note.getId()%>"><i class="fas fa-share btn-note move btn-mid"></i></a>
                            <i class="fas fa-ellipsis-h btn-note more btn-down"></i>
                        </div>
                        
                        <%
                        	}
                        %>

             
                    </div>
                </div>

                <!-- Doning div -->
                <div class="doing section">
                    <div class="headings">
                        <div class="head-text">Doing...</div>
                    </div>
                    <div class="tasks">
                        
						 <%
                        	List<Note> list3=DBView.selectAllDoing();
                        	for(Note note:list3){	
                        %>
                        	
                        <div class="task">
                            <div class="title-dash">
                                <%=note.getTitle()%>
                            </div>
                            <div class="description-dash">
                                <%=note.getContent()%>
                            </div>
                            <a href="DeleteServlet?note_id=<%= note.getId()%>"><i class="fas fa-trash btn-note remove btn-up"></i></a>
                            <a href="MoveToDone?note_id=<%= note.getId()%>"><i class="fas fa-check-circle btn-note check btn-mid"></i></a>
                            <i class="fas fa-ellipsis-h btn-note more btn-down"></i>
                        </div>
                        
                        <%
                        	}
                        %>
							
                    </div>
                </div>

                <!--Done div  -->
                <div class="done section">
                    <div class="headings">
                        <div class="head-text">Done</div>
                    </div>
                    <div class="tasks">
                        
                         <%
                        	List<Note> list4=DBView.selectAllDone();
                        	for(Note note:list4){	
                        %>
                        	
                        <div class="task" style="height:auto;">
                            <div class="title-dash">
                                <%=note.getTitle()%>
                            </div>
                            <div class="description-dash">
                                <%=note.getContent()%>
                            </div>
                            <i class="fas fa-ellipsis-h btn-note more btn-down"></i>
                        </div>
                        
                        <%
                        	}
                        %>
                        
                    </div>
                </div>
            </div>
            <!-- <div class="bottom-bar">

            </div> -->
        </aside>

        
    </div>

<!-- forms -->

    <div class="form-note">
        <%@ include file="jsps/form.jsp" %>
    </div>

<!-- forms -->

    <script src="JavaScript/index.js"></script>

</body>

</html>