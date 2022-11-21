var mysql = require('mysql');

var express = require('express');
var app = express();

var session = require('express-session');
var path = require('path');

var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
app.use(bodyParser.json());

app.set("view engine","ejs");
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
    host : 'localhost',
	user : 'root',
    database : 'exam_scheduling_db',
    password : 'Login_to_mysql'
});

app.get('/',function(req,res){
    console.log("Someone requested the server!");
    res.render("index");
});

app.get('/admin',function(req,res){
    console.log("Someone requested the server!");
    res.render("admin");
});

app.post('/auth', function(request, response) {
	var username = request.body.username;
	var password = request.body.password;
	if (username && password) {
		connection.query('SELECT * FROM admin WHERE username = ? AND password = ?', [username, password], function(error, results, fields) {
            var result = results
            if (result.length > 0) {
				request.session.loggedin = true;
				request.session.username = username;
				response.redirect('/admin_side');
			} else {
				return response.render("failed");
			}
		});
	} else {
		return response.render('entry');
	}
});

app.get('/admin_side', function(request, response) {
	if (request.session.loggedin) {
		response.render("admin_side");
	} else {
        response.render("enter");
	}
});

// app.get('/admin_side',function(req,res){
//     console.log("Someone requested the server!");
//     res.render("admin_side");
// });

app.get('/student_allotment',function(req,res){
    console.log("Someone requested the server!");
    res.render("data_entry_files/student_allotment");
});

app.post('/register',function(req,res) {
    var stu_all = {
                    USN : req.body.USN,
                    room_no : req.body.room_no
                  };
    connection.query('INSERT INTO student_allotment SET ?', stu_all, function(err, result) {
       if (err) {
            console.log(err.errno,err.sqlMessage);
            if (err.errno == 1452) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: "Invalid USN or Invalid room number!"});
            }
            if (err.errno == 1062) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: "Data exists!"});
            }
            if (err.errno == 1644) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: err.sqlMessage});
            }
       }
       res.redirect("/student_allotment");
   });
});

app.get('/room_data_entry',function(req,res){
    console.log("Someone requested the server!");
    res.render("data_entry_files/room_data_entry");
});

app.post('/register1',function(req,res) {
    var room_data = {
                       room_no : req.body.room_no,
                       capacity : req.body.capacity,
                       building : req.body.block
                    };
    connection.query('INSERT INTO room SET ?', room_data, function(err, result) {
       if (err) {
        console.log(err.errno,err.sqlMessage);
        if (err.errno == 1062) {
            return res.render("error_files/error_insertion",{errno: err.errno,error: "Data exists!"});
        }
        if (err.errno == 1644) {
            return res.render("error_files/error_insertion",{errno: err.errno,error: err.sqlMessage});
        }
       }
       res.redirect("/room_data_entry");
   });
});

app.get('/time_table_entry',function(req,res){
    console.log("Someone requested the server!");
    res.render("data_entry_files/time_table");
});

app.post('/register2',function(req,res) {
    var time_table = {
                       course_id :  req.body.course_no,
                       exam_date :  req.body.exam_date,
                       exam_time :  req.body.exam_time,
                       year      :  req.body.number,
                       dept_id   :  req.body.dept_id
                    };
    connection.query('INSERT INTO exam SET ?', time_table, function(err, result) {
       if (err) {
            console.log(err.errno,err.sqlMessage);
            if (err.errno == 1452) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: "Invalid Course_ID or Invalid department!"});
            }
            if (err.errno == 1062) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: "Data exists!"});
            }
            if (err.errno == 1644) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: err.sqlMessage});
            } 
       }
      res.redirect("/time_table_entry");
   });
});

app.get('/teacher_allotment',function(req,res){
    console.log("Someone requested the server!");
    res.render("data_entry_files/teacher_allotment");
});

app.post('/register3',function(req,res) {
    var teach_all = {
                       room_no   :  req.body.room_no,
                       teacher_id:  req.body.teacher_id,
                       dept_id   :  req.body.dept_id,
                       exam_date :  req.body.exam_date,
                       exam_time :  req.body.exam_time,
                    };
    connection.query('INSERT INTO teacher_allotment SET ?', teach_all, function(err, result) {
       if (err) {
            console.log(err.errno,err.sqlMessage);
            if (err.errno == 1452) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: "Invalid Teacher_ID OR Invalid department OR Invalid room number"});
            }
            if (err.errno == 1062) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: "Data exists!"});
            }
            if (err.errno == 1644) {
                return res.render("error_files/error_insertion",{errno: err.errno,error: err.sqlMessage});
            } 

       }
       res.redirect("/teacher_allotment");
   });
});

app.get('/see_room_no',function(req,res){
    console.log("Someone requested the server!");
    res.render("display_files/search_files/display_room_allotment");
});

app.get('/display',function(req,res) {
    
    var q = "SELECT * FROM student_allotment JOIN room ON student_allotment.room_no = room.room_no;"
    connection.query(q, function(err, result) {
       if (err) throw err;
       res.render("display_files/list_files/display_RA",{data: result});
    });
});

app.post('/display1',function(req,res) {
    
    var q = "SELECT * FROM student_allotment JOIN room ON student_allotment.room_no = room.room_no WHERE USN = '" +req.body.USN+ "'";
    connection.query(q, function(err, result) {
       if (err){
           console.log(err.errno,err.sqlMessage);
           return res.render("error_files/error_display");
       }
       return res.render("display_files/search_files/complete_room_list",{data: result});
   });
});

app.get('/see_time_table',function(req,res){
    console.log("Someone requested the server!");
    res.render("display_files/search_files/view_time_table");
});

app.post('/display2',function(req,res) {

    if (req.body.number == 1) {
        var q = 'SELECT exam.course_id,course.name,department.dept_name,exam.year,DATE_FORMAT(exam_date,"%D %M %Y") AS exam_date,exam_time ' +
        "FROM exam " +
        "JOIN course " +
             "ON exam.course_id = course.course_id " +
        "JOIN department " +
             "ON course.dept_id = department.dept_id " +
        "WHERE exam.year = " + req.body.number+ " ORDER BY exam_date";
     connection.query(q, function(err, result) {
     if (err){
        console.log(err.errno,err.sqlMessage);
        return res.render("error_files/error_display");
       }
       return res.render("display_files/search_files/display_tt",{data: result});
     });
    }

    else{
    var q = 'SELECT exam.course_id,course.name,exam.year,department.dept_name,DATE_FORMAT(exam_date,"%D %M %Y") AS exam_date,exam_time ' +
           "FROM exam " +
           "JOIN course " +
                "ON exam.course_id = course.course_id " +
           "JOIN department " +
                "ON exam.dept_id = department.dept_id " +
           "WHERE exam.year = " + req.body.number + " AND exam.dept_id = " + req.body.dept_id + " ORDER BY exam_date";
    connection.query(q, function(err, result) {
       if (err){
           console.log(err.errno,err.sqlMessage);
           return res.render("error_files/error_display");
       }
       return res.render("display_files/search_files/display_tt",{data: result});
   });
  }

});

app.get('/see_teacher_allotment',function(req,res){
    console.log("Someone requested the server!");
    res.render("display_files/search_files/view_teacher_allotment");
});

app.post('/display3',function(req,res) {
    
    var q = "SELECT room_no,name,teacher.teacher_id,teacher.dept_id,DATE_FORMAT(exam_date,'%D %M %Y') AS exam_date,exam_time FROM teacher_allotment JOIN teacher" +
            " ON teacher_allotment.teacher_id = teacher.teacher_id AND teacher_allotment.dept_id = teacher.dept_id " +
            " WHERE teacher_allotment.teacher_id = " +req.body.teacher_id+ " AND teacher_allotment.dept_id = " +req.body.dept_id;
    connection.query(q, function(err, result) {
       if (err){
           console.log(err.errno,err.sqlMessage);
           return res.render("error_files/error_display");
       }
       return res.render("display_files/search_files/display_ta.ejs",{data: result});
   });
});

app.get('/complete_list',function(req,res){
    console.log("Someone requested the server!");
    res.render("display_files/list_files/complete_list");
});

app.get('/display4',function(req,res) {
    
    var q = "SELECT * FROM student ORDER BY year,dept_id,name"
    connection.query(q, function(err, result) {
       if (err) throw err;
       res.render("display_files/list_files/display_SL",{data: result});
   });
});

app.get('/display5',function(req,res) {
    
    var q = "SELECT * FROM course ORDER BY year,dept_id"
    connection.query(q, function(err, result) {
       if (err) throw err;
       res.render("display_files/list_files/display_CL",{data: result});
   });
})

app.get('/display6',function(req,res) {
    
    var q = "SELECT * FROM department ORDER BY dept_id"
    connection.query(q, function(err, result) {
       if (err) throw err;
       res.render("display_files/list_files/display_DL",{data: result});
   });
})

app.get('/display7',function(req,res) {
    
    var q = "SELECT * FROM teacher ORDER BY dept_id,teacher_id"
    connection.query(q, function(err, result) {
       if (err) throw err;
       res.render("display_files/list_files/display_TL",{data: result});
   });
})

app.get('/display8',function(req,res) {
    
    var q = "SELECT * FROM room ORDER BY room_no"
    connection.query(q, function(err, result) {
       if (err) throw err;
       res.render("display_files/list_files/display_RL",{data: result});
   });
})

app.get('/delete_process',function(req,res){
    console.log("Someone requested the server!");
    res.render("delete_files/delete_all_slots");
});

app.post('/delete',function(req,res) {
    
    var q = "SET SQL_SAFE_UPDATES = 0;";
    connection.query(q, function(err, result) {
       if (err){
           console.log(err);
           return res.render("delete_files/error_delete");
       }
   });

   var q = "DELETE FROM student_allotment;";
   connection.query(q, function(err, result) {
      if (err){
          console.log(err);
          return res.render("delete_files/error_delete");
      }
   });

    var q = "DELETE FROM teacher_allotment";
    connection.query(q, function(err, result) {
       if (err){
           console.log(err);
           return res.render("delete_files/error_delete");
       }
     });

        var q = "DELETE FROM exam;";
        connection.query(q, function(err, result) {
        if(err){ 
           console.log(err);
           return res.render("delete_files/error_delete");
        }
        });  

       var q = "DELETE FROM room";
       connection.query(q, function(err, result) {
       if(err){
           console.log(err);
           return res.render("delete_files/error_delete");
        }
       });

    var q = "SET SQL_SAFE_UPDATES = 1;";
    connection.query(q, function(err, result) {
    if(err){
        console.log(err);
        return res.render("delete_files/error_delete");
     }
    res.redirect("/admin_side");
    });
})

app.get('/display9',function(req,res) {
    
    var q = "SELECT year,dept_id,course_id,DATE_FORMAT(exam_date,'%D %M %Y') AS exam_date,exam_time FROM exam ORDER BY exam_date,year,dept_id"
    connection.query(q, function(err, result) {
       if (err) throw err;
       res.render("display_files/list_files/display_TT",{data: result});
   });
})

app.get('/display10',function(req,res) {
    
    var q = "SELECT room_no,teacher_id,dept_id,DATE_FORMAT(exam_date,'%D %M %Y') AS exam_date,exam_time FROM teacher_allotment ORDER BY exam_date,dept_id,teacher_id"
    connection.query(q, function(err, result) {
       if (err) throw err;
       res.render("display_files/list_files/display_TA",{data: result});
   });
})

app.listen(3000,function(){
    console.log("Server running on 3000!");
});

