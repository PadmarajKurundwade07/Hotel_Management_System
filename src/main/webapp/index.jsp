<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management System</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .container {
            max-width: 1000px;
            width: 100%;
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .header {
            background: linear-gradient(135deg, #4f46e5, #7c3aed, #ec4899);
            color: white;
            text-align: center;
            padding: 40px 20px;
            position: relative;
            overflow: hidden;
        }

        .header::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.1) 0%, transparent 70%);
            animation: headerShine 4s ease-in-out infinite;
        }

        @keyframes headerShine {
            0%, 100% { transform: rotate(0deg); opacity: 0.5; }
            50% { transform: rotate(180deg); opacity: 0.8; }
        }

        .header h1 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 15px;
            position: relative;
            z-index: 1;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .main-logo {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            animation: bounce 2s ease-in-out infinite;
        }

        .logo-icon {
            position: relative;
            font-size: 2.2rem;
        }

        .logo-key {
            position: absolute;
            top: -8px;
            right: -8px;
            font-size: 0.9rem;
            color: #fbbf24;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
            transform: rotate(45deg);
            animation: keyShine 3s ease-in-out infinite;
        }

        @keyframes keyShine {
            0%, 100% { opacity: 0.8; transform: rotate(45deg) scale(1); }
            50% { opacity: 1; transform: rotate(45deg) scale(1.1); }
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% { transform: translateY(0); }
            40% { transform: translateY(-5px); }
            60% { transform: translateY(-3px); }
        }

        .header p {
            font-size: 1.1rem;
            opacity: 0.9;
            font-weight: 300;
            position: relative;
            z-index: 1;
        }

        .content {
            padding: 40px;
        }

        .modules-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .module-card {
            background: linear-gradient(145deg, #f8fafc, #f1f5f9);
            border-radius: 15px;
            padding: 30px;
            border: 2px solid #e2e8f0;
            transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            position: relative;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .module-card::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 3px;
            border-radius: 15px 15px 0 0;
            transition: all 0.3s ease;
        }

        .reservations.module-card::after {
            background: linear-gradient(90deg, #3b82f6, #1d4ed8);
        }

        .reports.module-card::after {
            background: linear-gradient(90deg, #8b5cf6, #7c3aed);
        }

        .module-card:hover {
            transform: translateY(-8px) scale(1.02);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
            border-color: #cbd5e1;
        }

        .module-card:hover::after {
            height: 5px;
        }

        .module-header {
            display: flex;
            align-items: center;
            margin-bottom: 25px;
            padding-bottom: 15px;
            border-bottom: 2px solid #e2e8f0;
        }

        .module-icon {
            width: 50px;
            height: 50px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            margin-right: 15px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .module-icon::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.3);
            transition: all 0.4s ease;
            transform: translate(-50%, -50%);
        }

        .module-card:hover .module-icon::before {
            width: 100%;
            height: 100%;
        }

        .module-card:hover .module-icon {
            transform: rotate(5deg) scale(1.1);
        }

        .reservations .module-icon {
            background: linear-gradient(135deg, #dbeafe, #bfdbfe);
            color: #1d4ed8;
            box-shadow: 0 4px 12px rgba(59, 130, 246, 0.2);
        }

        .reports .module-icon {
            background: linear-gradient(135deg, #ede9fe, #ddd6fe);
            color: #7c3aed;
            box-shadow: 0 4px 12px rgba(139, 92, 246, 0.2);
        }

        /* Custom Logo Styles */
        .reservation-logo {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .reservation-heart {
            position: absolute;
            top: -3px;
            right: -3px;
            font-size: 0.7rem;
            color: #ef4444;
            animation: heartbeat 1.5s ease-in-out infinite;
        }

        @keyframes heartbeat {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.2); }
        }

        .reports-check {
            position: absolute;
            top: -5px;
            right: -5px;
            font-size: 0.7rem;
            color: #10b981;
            animation: checkPulse 2s ease-in-out infinite;
        }

        @keyframes checkPulse {
            0%, 100% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.7; transform: scale(1.3); }
        }

        .module-title {
            font-size: 1.4rem;
            font-weight: 600;
            color: #1e293b;
        }

        .action-list {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .action-btn {
            display: flex;
            align-items: center;
            padding: 15px 20px;
            background: white;
            border: 2px solid #e2e8f0;
            border-radius: 10px;
            color: #374151;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .action-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.4), transparent);
            transition: left 0.5s;
        }

        .action-btn:hover::before {
            left: 100%;
        }

        .action-btn i {
            margin-right: 12px;
            font-size: 1rem;
            width: 20px;
            transition: transform 0.3s ease;
        }

        .action-btn:hover i {
            transform: scale(1.2);
        }

        .reservations .action-btn:hover {
            background: linear-gradient(135deg, #dbeafe, #bfdbfe);
            border-color: #3b82f6;
            color: #1d4ed8;
            transform: translateX(5px);
            box-shadow: 0 5px 15px rgba(59, 130, 246, 0.3);
        }

        .reports .action-btn:hover {
            background: linear-gradient(135deg, #ede9fe, #ddd6fe);
            border-color: #8b5cf6;
            color: #7c3aed;
            transform: translateX(5px);
            box-shadow: 0 5px 15px rgba(139, 92, 246, 0.3);
        }

        .footer {
            text-align: center;
            padding: 30px;
            color: #64748b;
            font-size: 0.9rem;
            border-top: 1px solid #e2e8f0;
        }

        @media (max-width: 768px) {
            body {
                padding: 10px;
            }

            .header {
                padding: 30px 20px;
            }

            .header h1 {
                font-size: 2rem;
            }

            .content {
                padding: 30px 20px;
            }

            .modules-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }

            .module-card {
                padding: 25px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header class="header">
            <h1>
                <div class="main-logo">
                    <div class="logo-icon">
                        <i class="fas fa-concierge-bell"></i>
                        <i class="fas fa-key logo-key"></i>
                    </div>
                </div>
                Hotel Management System
            </h1>
            <p>"!!!!! Smart control for seamless hotel operations !!!!!"</p>
        </header>

        <div class="content">
            <div class="modules-grid">
                <div class="module-card reservations">
                    <div class="module-header">
                        <div class="module-icon">
                            <div class="reservation-logo">
                                <i class="fas fa-door-open"></i>
                                <i class="fas fa-heart reservation-heart"></i>
                            </div>
                        </div>
                        <h2 class="module-title">Reservations</h2>
                    </div>
                    <div class="action-list">
                        <a href="reservationadd.jsp" class="action-btn">
                            <i class="fas fa-plus"></i>
                            Add New Reservation
                        </a>
                        <a href="reservationupdate.jsp" class="action-btn">
                            <i class="fas fa-edit"></i>
                            Update Reservation
                        </a>
                        <a href="reservationdelete.jsp" class="action-btn">
                            <i class="fas fa-times"></i>
                            Cancel Reservation
                        </a>
                        <a href="displayReservations" class="action-btn">
                            <i class="fas fa-list"></i>
                            View All Reservations
                        </a>
                    </div>
                </div>

                <div class="module-card reports">
                    <div class="module-header">
                        <div class="module-icon">
                            <div class="reports-logo">
                                <i class="fas fa-clipboard-list"></i>
                                <i class="fas fa-check-circle reports-check"></i>
                            </div>
                        </div>
                        <h2 class="module-title">Reports</h2>
                    </div>
                    <div class="action-list">
                        <a href="reportCriteria" class="action-btn">
                            <i class="fas fa-file-alt"></i>
                            Generate Reports
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
    &copy; <script>document.write(new Date().getFullYear())</script> Hotel Management System by padmarajkurundwade07. All rights reserved.
</footer>

    </div>
</body>
</html>