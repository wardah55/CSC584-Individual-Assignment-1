<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        * { box-sizing: border-box; margin: 0; padding: 0; }
        body { 
            font-family: 'Poppins', sans-serif; 
            background: #eef2f6;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
        }
        
        .profile-card { 
            display: flex;
            flex-direction: row;
            width: 100%;
            max-width: 800px; 
            background: #fff; 
            border-radius: 15px; 
            box-shadow: 0 15px 35px rgba(0,0,0,0.1); 
            overflow: hidden;
        }

        /* Left Sidebar (Gradient) */
        .sidebar {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 40px 30px;
            width: 35%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .avatar {
            width: 100px;
            height: 100px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 40px;
            font-weight: 600;
            margin-bottom: 20px;
            border: 3px solid rgba(255, 255, 255, 0.5);
        }
        .sidebar h2 {
            font-size: 22px;
            margin-bottom: 5px;
        }
        .sidebar p {
            font-size: 13px;
            opacity: 0.8;
            word-break: break-all;
        }

        /* Right Main Content */
        .main-content {
            padding: 40px;
            width: 65%;
        }
        h3 {
            color: #333;
            font-size: 20px;
            margin-bottom: 25px;
            border-bottom: 2px solid #eee;
            padding-bottom: 10px;
        }
        
        .info-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 30px;
        }
        .info-item { display: flex; flex-direction: column; }
        .label { 
            font-size: 12px; 
            text-transform: uppercase; 
            color: #888; 
            font-weight: 600; 
            margin-bottom: 5px;
            letter-spacing: 0.5px;
        }
        .value { 
            font-size: 15px; 
            color: #222; 
            font-weight: 600;
        }

        .intro-section {
            margin-bottom: 30px;
        }
        .intro-box { 
            background: #f8faff; 
            padding: 20px; 
            border-left: 4px solid #667eea; 
            border-radius: 0 8px 8px 0; 
            color: #444;
            font-size: 14px;
            line-height: 1.6;
        }

        .btn { 
            display: inline-block; 
            padding: 12px 25px; 
            background: #fff; 
            color: #667eea; 
            border: 2px solid #667eea;
            text-decoration: none; 
            border-radius: 8px; 
            font-weight: 600;
            font-size: 14px;
            transition: all 0.3s;
        }
        .btn:hover { 
            background: #667eea; 
            color: #fff;
        }

        /* Mobile Responsive */
        @media (max-width: 768px) {
            .profile-card { flex-direction: column; }
            .sidebar { width: 100%; padding: 30px; }
            .main-content { width: 100%; padding: 30px; }
            .info-grid { grid-template-columns: 1fr; gap: 15px; }
        }
    </style>
</head>
<body>
    <div class="profile-card">
        
        <div class="sidebar">
            <div class="avatar">
                ${name.substring(0,1)}
            </div>
            <h2>${name}</h2>
            <p>${email}</p>
        </div>

        <div class="main-content">
            <h3>Student Profile</h3>
            
            <div class="info-grid">
                <div class="info-item">
                    <span class="label">Student ID</span>
                    <span class="value">${studentId}</span>
                </div>
                <div class="info-item">
                    <span class="label">Programme</span>
                    <span class="value">${programme}</span>
                </div>
                <div class="info-item">
                    <span class="label">Hobbies</span>
                    <span class="value">${hobbies}</span>
                </div>
            </div>

            <div class="intro-section">
                <span class="label" style="margin-bottom: 8px; display:block;">Self-Introduction</span>
                <div class="intro-box">
                    "${introduction}"
                </div>
            </div>

            <a href="index.html" class="btn">Create Another Profile</a>
        </div>
        
    </div>
</body>
</html>