
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;   -- filtered unique indexes on enrollments / queue_tickets
GO
USE jicrss_db;
GO
/* administrators (2) */
SET IDENTITY_INSERT administrators ON;
INSERT INTO administrators (admin_id, admin_staff_id, admin_fname, admin_lname, admin_email, admin_password, admin_phone, admin_is_active) VALUES
(1, 'ADM-1001', N'Abdullah', N'Al-Harbi', N'abdullah.alharbi@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0551208834', 1),
(2, 'ADM-1002', N'Nawal', N'Al-Qahtani', N'nawal.alqahtani@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966562230917', 1);
SET IDENTITY_INSERT administrators OFF;
GO

/* departments (4) */
SET IDENTITY_INSERT departments ON;
INSERT INTO departments (dept_id, dept_code, dept_name, dept_email, dept_phone, admin_id) VALUES
(1, 'BA', N'Business Administration', N'ba@jic.edu.sa', '0133401100', 1),
(2, 'IT', N'Information Technology', N'it@jic.edu.sa', '0133401200', 1),
(3, 'EET', N'Electrical Engineering Technology', N'eet@jic.edu.sa', '0133401300', 2),
(4, 'MET', N'Mechanical Engineering Technology', N'met@jic.edu.sa', '0133401400', 2);
SET IDENTITY_INSERT departments OFF;
GO

/* students (10) */
SET IDENTITY_INSERT students ON;
INSERT INTO students (student_id, student_university_id, student_fname, student_lname, student_email, student_password, student_phone, student_academic_level, student_is_active, dept_id, student_gpa, student_completed_hours) VALUES
(1, '431200123', N'Shahd', N'Ahmed', N'431200123@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0554128830', 8, 1, 1, 3.62, 112),
(2, '431200147', N'Joud', N'Al-Mutairi', N'431200147@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966553301472', 6, 1, 1, 3.15, 84),
(3, '431200162', N'Lama', N'Al-Dosari', N'431200162@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0563318205', 7, 1, 1, 2.98, 97),
(4, '441200031', N'Ghadah', N'Al-Zahrani', N'441200031@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966540017733', 5, 1, 2, 3.41, 70),
(5, '421200088', N'Rahaf', N'Al-Shehri', N'421200088@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0598826140', 8, 1, 2, 2.71, 118),
(6, '441200054', N'Haifa', N'Al-Otaibi', N'441200054@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966581149026', 4, 1, 3, 3.88, 55),
(7, '431200210', N'Dana', N'Al-Harbi', N'431200210@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0507741983', 6, 1, 4, 3.05, 86),
(8, '451200019', N'Nora', N'Al-Ghamdi', N'451200019@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966509923561', 3, 1, 1, 3.50, 38),
(9, '431200277', N'Wejdan', N'Al-Qahtani', N'431200277@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0546620317', 7, 1, 2, 2.89, 99),
(10, '421200093', N'Atheer', N'Al-Anazi', N'421200093@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966537702418', 8, 0, 3, 3.22, 121);
SET IDENTITY_INSERT students OFF;
GO

/* academic_advisors (6) */
SET IDENTITY_INSERT academic_advisors ON;
INSERT INTO academic_advisors (advisor_id, advisor_staff_id, advisor_fname, advisor_lname, advisor_email, advisor_password, advisor_phone, advisor_is_active, dept_id) VALUES
(1, 'ADV-1041', N'Raneem', N'Moahmmed', N'raneem.moahmmed@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0552219084', 1, 1),
(2, 'ADV-1042', N'Lama', N'Al-Zahrani', N'lama.alzahrani@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966563308812', 1, 1),
(3, 'ADV-1043', N'Abeer', N'Al-Shehri', N'abeer.alshehri@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0574410235', 1, 2),
(4, 'ADV-1044', N'Nouf', N'Al-Otaibi', N'nouf.alotaibi@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966587720461', 1, 2),
(5, 'ADV-1045', N'Sara', N'Al-Qahtani', N'sara.alqahtani@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0538824107', 1, 3),
(6, 'ADV-1046', N'Manal', N'Al-Harbi', N'manal.alharbi@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966506631874', 1, 4);
SET IDENTITY_INSERT academic_advisors OFF;
GO

/* heads_of_department (4) */
SET IDENTITY_INSERT heads_of_department ON;
INSERT INTO heads_of_department (hod_id, hod_staff_id, hod_fname, hod_lname, hod_email, hod_password, hod_phone, hod_is_active, dept_id) VALUES
(1, 'HOD-1041', N'Yasmeen', N'Alshammari', N'yasmeen.alshammari@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0551130472', 1, 1),
(2, 'HOD-1042', N'Mona', N'Al-Dossary', N'mona.aldossary@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966561148207', 1, 2),
(3, 'HOD-1043', N'Hessa', N'Al-Mutairi', N'hessa.almutairi@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0579963014', 1, 3),
(4, 'HOD-1044', N'Amal', N'Al-Ghamdi', N'amal.alghamdi@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966548810356', 1, 4);
SET IDENTITY_INSERT heads_of_department OFF;
GO

/* scheduling_coordinators (4) */
SET IDENTITY_INSERT scheduling_coordinators ON;
INSERT INTO scheduling_coordinators (coord_id, coord_staff_id, coord_fname, coord_lname, coord_email, coord_password, coord_phone, coord_is_active, dept_id) VALUES
(1, 'CRD-1041', N'Rimas', N'Jumomah', N'rimas.jumomah@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0566672013', 1, 1),
(2, 'CRD-1042', N'Hind', N'Al-Anazi', N'hind.alanazi@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966552284719', 1, 2),
(3, 'CRD-1043', N'Reem', N'Al-Subaie', N'reem.alsubaie@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '0591135608', 1, 3),
(4, 'CRD-1044', N'Maha', N'Al-Shammari', N'maha.alshammari@jic.edu.sa', '$2y$10$J4eyO6nIhvbH0RhH3Qs5WOs1sy3fXsSWH5q64A71RrD7OyaRQ6m4G', '966534426901', 1, 4);
SET IDENTITY_INSERT scheduling_coordinators OFF;
GO

/* courses (16) */
SET IDENTITY_INSERT courses ON;
INSERT INTO courses (course_id, course_code, course_name, course_credit_hours, course_level, course_is_active, dept_id) VALUES
(1, 'MIS 321', N'Database Systems', 3, 5, 1, 1),
(2, 'MIS 430', N'Systems Analysis and Design', 3, 7, 1, 1),
(3, 'MIS 440', N'Business Intelligence', 3, 7, 1, 1),
(4, 'MIS 451', N'Capstone Project', 3, 8, 1, 1),
(5, 'ACCT 201', N'Principles of Accounting', 3, 3, 1, 1),
(6, 'ACCT 305', N'Cost Accounting', 3, 6, 1, 1),
(7, 'MGT 201', N'Principles of Management', 3, 3, 1, 1),
(8, 'ENGL 102', N'Technical Writing', 3, 2, 1, 1),
(9, 'FIN 301', N'Financial Management', 3, 6, 1, 1),
(10, 'IT 210', N'Programming II', 3, 4, 1, 2),
(11, 'IT 330', N'Computer Networks', 3, 6, 1, 2),
(12, 'IT 450', N'IT Project', 3, 8, 1, 2),
(13, 'EET 220', N'Electric Circuits II', 4, 4, 1, 3),
(14, 'EET 360', N'Power Systems', 3, 7, 1, 3),
(15, 'MET 210', N'Statics', 3, 4, 1, 4),
(16, 'MET 340', N'Thermodynamics', 3, 6, 1, 4);
SET IDENTITY_INSERT courses OFF;
GO

/* course_prerequisites (9) */
INSERT INTO course_prerequisites (course_id, prereq_course_id) VALUES
(4, 2),
(4, 1),
(3, 1),
(6, 5),
(9, 5),
(12, 11),
(11, 10),
(14, 13),
(16, 15);
GO

/* sections (18) */
SET IDENTITY_INSERT sections ON;
INSERT INTO sections (section_id, section_number, section_semester, section_days, section_start_time, section_end_time, section_room, section_instructor, section_capacity, section_enrolled, section_status, course_id) VALUES
(1, '201', '481', 'Sun/Tue', '08:00', '09:50', 'B51-112', N'Dr. Khalid Al-Rasheed', 30, 29, 'Open', 1),
(2, '203', '481', 'Sun/Tue', '10:00', '11:50', 'B51-104', N'Dr. Faisal Al-Mansour', 35, 35, 'Open', 5),
(3, '202', '481', 'Mon/Wed', '08:00', '09:50', 'B52-210', N'Dr. Ibrahim Al-Saleh', 35, 31, 'Open', 7),
(4, '205', '481', 'Thu', '08:00', '10:50', 'B50-015', N'Ms. Ruba Al-Hamdan', 30, 27, 'Open', 8),
(5, '204', '481', 'Mon/Wed', '10:00', '11:50', 'B51-118', N'Dr. Turki Al-Enezi', 30, 26, 'Open', 4),
(6, '201', '481', 'Sun/Tue', '13:00', '14:50', 'B51-118', N'Dr. Turki Al-Enezi', 30, 30, 'Full', 4),
(7, '202', '481', 'Mon/Wed', '13:00', '14:50', 'B51-120', N'Dr. Hanan Al-Fahad', 30, 29, 'Open', 3),
(8, '201', '481', 'Sun/Tue', '13:00', '14:50', 'B51-116', N'Dr. Waleed Al-Omari', 30, 28, 'Open', 2),
(9, '201', '481', 'Mon/Wed', '10:00', '11:50', 'B52-204', N'Dr. Faisal Al-Mansour', 30, 23, 'Open', 6),
(10, '201', '481', 'Sun/Tue', '10:00', '11:50', 'B52-206', N'Dr. Saud Al-Juhani', 30, 30, 'Full', 9),
(11, '202', '481', 'Mon/Wed', '13:00', '14:50', 'B52-206', N'Dr. Saud Al-Juhani', 30, 24, 'Open', 9),
(12, '201', '481', 'Sun/Tue', '08:00', '09:50', 'C10-101', N'Mr. Ahmed Al-Ali', 30, 27, 'Open', 10),
(13, '201', '481', 'Sun/Tue', '10:00', '11:50', 'C10-204', N'Dr. Nasser Al-Shahrani', 30, 29, 'Open', 11),
(14, '202', '481', 'Mon/Wed', '13:00', '14:50', 'C10-204', N'Dr. Nasser Al-Shahrani', 30, 26, 'Open', 11),
(15, '201', '481', 'Thu', '10:00', '12:50', 'C10-110', N'Dr. Majed Al-Otaibi', 25, 25, 'Full', 12),
(16, '201', '481', 'Sun/Tue', '08:00', '09:50', 'D20-015', N'Eng. Saeed Al-Ghamdi', 28, 21, 'Open', 13),
(17, '201', '481', 'Mon/Wed', '10:00', '11:50', 'D20-102', N'Dr. Bandar Al-Harbi', 28, 22, 'Open', 14),
(18, '201', '481', 'Sun/Tue', '13:00', '14:50', 'E30-201', N'Dr. Yousef Al-Malki', 30, 24, 'Open', 16);
SET IDENTITY_INSERT sections OFF;
GO

/* enrollments (18) */
SET IDENTITY_INSERT enrollments ON;
INSERT INTO enrollments (enroll_id, student_id, section_id, enroll_registered_date, enroll_status, coord_id, enroll_updated_date, enroll_semester) VALUES
(1, 1, 1, '2026-08-24 09:05:00', 'Registered', NULL, NULL, '481'),
(2, 1, 2, '2026-08-24 09:06:00', 'Registered', NULL, NULL, '481'),
(3, 1, 3, '2026-08-24 09:08:00', 'Registered', NULL, NULL, '481'),
(4, 1, 4, '2026-09-02 11:20:00', 'Registered', 1, '2026-09-02 11:20:00', '481'),
(5, 1, 5, '2026-09-25 10:40:00', 'Registered', 1, '2026-09-25 10:40:00', '481'),
(6, 2, 7, '2026-09-01 12:10:00', 'Registered', 1, '2026-09-01 12:10:00', '481'),
(7, 2, 8, '2026-08-25 10:00:00', 'Registered', NULL, NULL, '481'),
(8, 3, 9, '2026-08-25 10:30:00', 'Registered', NULL, NULL, '481'),
(9, 8, 2, '2026-08-26 08:40:00', 'Registered', NULL, NULL, '481'),
(10, 4, 13, '2026-08-24 10:15:00', 'Dropped', 2, '2026-09-03 09:30:00', '481'),
(11, 4, 14, '2026-09-03 09:30:00', 'Registered', 2, '2026-09-03 09:30:00', '481'),
(12, 4, 12, '2026-08-24 10:16:00', 'Registered', NULL, NULL, '481'),
(13, 5, 13, '2026-08-23 09:00:00', 'Registered', NULL, NULL, '481'),
(14, 9, 13, '2026-08-24 11:40:00', 'Registered', NULL, NULL, '481'),
(15, 6, 16, '2026-08-25 09:10:00', 'Registered', NULL, NULL, '481'),
(16, 7, 18, '2026-08-25 09:50:00', 'Registered', NULL, NULL, '481'),
(17, 10, 17, '2026-08-23 08:30:00', 'Registered', NULL, NULL, '481'),
(18, 3, 1, '2026-08-25 10:31:00', 'Registered', NULL, NULL, '481');
SET IDENTITY_INSERT enrollments OFF;
GO

/* normal_requests (8) */
SET IDENTITY_INSERT normal_requests ON;
INSERT INTO normal_requests (nreq_id, nreq_number, nreq_description, nreq_status, nreq_priority, nreq_submitted_date, nreq_coordinator_comment, nreq_closed_date, student_id, course_id, current_section_id, requested_section_id, coord_id, nreq_reason) VALUES
(1, 'NR-1181', N'Section 201 of MIS 440 closed before my registration day and I need the course this semester to stay on my study plan.', 'Completed', 'Medium', '2026-08-27 09:15:00', N'Added to section 202 — check the new time on your schedule.', '2026-09-01 12:10:00', 2, 3, NULL, 7, 1, 'Section is full'),
(2, 'NR-1182', N'I would like to join IT 450 a second time to improve my grade, but I will speak to my advisor first and may cancel this request.', 'Cancelled', 'High', '2026-08-28 13:40:00', NULL, '2026-08-29 08:15:00', 5, 12, NULL, 15, NULL, 'Other'),
(3, 'NR-1183', N'FIN 301 section 201 overlaps with my ACCT 305 lecture on Monday and Wednesday, so I need the afternoon section instead.', 'Under Process', 'Medium', '2026-10-06 10:20:00', N'Checking the free seats in the afternoon section 202.', NULL, 3, 9, NULL, 11, 1, 'Time conflict'),
(4, 'NR-1184', N'My IT 330 section 201 clashes with my part-time training hours on Sunday mornings; section 202 fits my week.', 'Completed', 'Medium', '2026-08-31 08:50:00', N'Moved from section 201 to 202.', '2026-09-03 09:30:00', 4, 11, 13, 14, 2, 'Time conflict'),
(5, 'NR-1185', N'I missed my registration day because of a family emergency and ACCT 201 is still missing from my level 3 plan.', 'New', 'Low', '2026-10-12 08:05:00', NULL, NULL, 8, 5, NULL, 2, NULL, 'Missed my registration day'),
(6, 'NR-1186', N'IT 450 section 201 is full and it is the only section; I need it to graduate on time next semester.', 'Rejected', 'Medium', '2026-09-05 11:30:00', N'The only section is at full capacity and the room cannot take more students. Please submit a special request if you need an exception.', '2026-09-07 10:15:00', 9, 12, NULL, 15, 2, 'Section is full'),
(7, 'NR-1187', N'ENGL 102 did not appear on my schedule after registration although I selected it on my registration day.', 'Completed', 'High', '2026-08-31 10:30:00', N'Registered in section 205 (Thursday).', '2026-09-02 11:20:00', 1, 8, NULL, 4, 1, 'Course missing from my schedule'),
(8, 'NR-1188', N'MET 340 is on my study plan for this semester but it was not added during registration.', 'Draft', 'Medium', NULL, NULL, NULL, 7, 16, NULL, 18, NULL, 'Course missing from my schedule');
SET IDENTITY_INSERT normal_requests OFF;
GO

/* special_requests (8) */
SET IDENTITY_INSERT special_requests ON;
INSERT INTO special_requests (sreq_id, sreq_number, sreq_case_type, sreq_description, sreq_status, sreq_priority, sreq_submitted_date, sreq_advisor_decision, sreq_advisor_comment, sreq_advisor_decision_date, sreq_hod_decision, sreq_hod_comment, sreq_hod_decision_date, sreq_coordinator_comment, sreq_closed_date, student_id, course_id, advisor_id, hod_id, coord_id) VALUES
(1, 'SR-2445', 'Course Substitution', N'I am asking to substitute MET 340 with an equivalent course I completed during my summer exchange programme.', 'Cancelled', 'Medium', '2026-09-08 10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-10 09:00:00', 7, 16, 6, NULL, NULL),
(2, 'SR-2446', 'Prerequisite Exemption Form', N'I am asking for an exemption from EET 220 for EET 360 because I completed an equivalent circuits course before transferring to JIC.', 'With Advisor', 'Low', '2026-10-01 09:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 14, 5, NULL, NULL),
(3, 'SR-2447', 'Late Withdrawal', N'I am asking for a late withdrawal from IT 330 because of a documented medical condition that started after the add/drop period.', 'Accepted', 'Medium', '2026-09-14 08:45:00', 'Accepted', N'The medical report covers the whole period since the add/drop deadline. I support the withdrawal.', '2026-09-16 10:20:00', 'Accepted', N'Approved on medical grounds. The coordinator will withdraw the student from section 201.', '2026-09-18 12:00:00', NULL, NULL, 9, 11, 4, 2, NULL),
(4, 'SR-2448', 'Graduation Exception', N'I am a graduating student and ask to register IT 450 above the section capacity, as it is my last remaining course.', 'Rejected', 'High', '2026-09-02 13:10:00', 'Accepted', N'The student is graduating this semester and IT 450 is the last course on the plan.', '2026-09-04 09:40:00', 'Rejected', N'The lab can only hold 25 students for safety reasons. The student will be given priority next semester.', '2026-09-06 11:15:00', NULL, '2026-09-06 11:15:00', 5, 12, 3, 2, NULL),
(5, 'SR-2449', 'Course Substitution', N'I am asking to substitute ACCT 305 Cost Accounting with FIN 301, which is closer to my career plan in financial systems.', 'Rejected', 'High', '2026-09-15 10:05:00', 'Rejected', N'ACCT 305 is a core course of the MIS plan and cannot be replaced by FIN 301. Please register it next semester.', '2026-09-17 09:30:00', NULL, NULL, NULL, NULL, '2026-09-17 09:30:00', 1, 6, 1, NULL, NULL),
(6, 'SR-2450', 'Prerequisite Exemption Form', N'I am asking for an exemption from MIS 321 for MIS 440 because I completed an equivalent database course at my previous college.', 'With Head of Department', 'Medium', '2026-10-05 11:00:00', 'Accepted', N'The previous course covers the same outcomes as MIS 321. I recommend the exemption.', '2026-10-08 10:15:00', NULL, NULL, NULL, NULL, NULL, 3, 3, 2, 1, NULL),
(7, 'SR-2451', 'Prerequisite Exemption Form', N'I am asking for an exemption from the prerequisite of MIS 451 Capstone Project. MIS 430 is my last remaining prerequisite and I am completing it this semester with a passing grade so far.', 'Completed', 'High', '2026-09-22 09:14:00', 'Accepted', N'Shahd is in her final level with a strong GPA, and MIS 430 is running alongside with a passing grade. I support the exemption.', '2026-09-23 11:30:00', 'Accepted', N'Approved. The student must pass MIS 430 this semester for the capstone grade to be recorded.', '2026-09-24 10:05:00', N'Registered in MIS 451 section 204 — Mon/Wed 10:00–11:50, room B51-118.', '2026-09-25 10:40:00', 1, 4, 1, 1, 1),
(8, 'SR-2452', 'Credit Overload', N'I am asking to register MIS 430 as an extra course this semester (18 credit hours) to graduate one semester earlier.', 'With Advisor', 'Medium', '2026-10-11 12:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, NULL, NULL);
SET IDENTITY_INSERT special_requests OFF;
GO

/* special_request_documents (11) */
SET IDENTITY_INSERT special_request_documents ON;
INSERT INTO special_request_documents (doc_id, doc_file_name, doc_file_path, doc_file_type, doc_file_size, doc_upload_date, sreq_id) VALUES
(1, N'Academic transcript — Shahd Ahmed.pdf', N'/storage/special_requests/SR-2451/academic-transcript-shahd-ahmed.pdf', 'pdf', 421888, '2026-09-22 09:11:00', 7),
(2, N'MIS 430 progress report.pdf', N'/storage/special_requests/SR-2451/mis-430-progress-report.pdf', 'pdf', 192512, '2026-09-22 09:11:00', 7),
(3, N'FIN 301 course description.pdf', N'/storage/special_requests/SR-2449/fin-301-course-description.pdf', 'pdf', 250880, '2026-09-15 10:02:00', 5),
(4, N'Previous college transcript.pdf', N'/storage/special_requests/SR-2450/previous-college-transcript.pdf', 'pdf', 1669120, '2026-10-05 10:57:00', 6),
(5, N'Database course syllabus.pdf', N'/storage/special_requests/SR-2450/database-course-syllabus.pdf', 'pdf', 942080, '2026-10-05 10:57:00', 6),
(6, N'Medical report.pdf', N'/storage/special_requests/SR-2447/medical-report.pdf', 'pdf', 2097152, '2026-09-14 08:42:00', 3),
(7, N'Hospital appointment letter.jpg', N'/storage/special_requests/SR-2447/hospital-appointment-letter.jpg', 'jpg', 798720, '2026-09-14 08:42:00', 3),
(8, N'Graduation plan.pdf', N'/storage/special_requests/SR-2448/graduation-plan.pdf', 'pdf', 317440, '2026-09-02 13:07:00', 4),
(9, N'Transfer course equivalence.pdf', N'/storage/special_requests/SR-2446/transfer-course-equivalence.pdf', 'pdf', 1438720, '2026-10-01 09:27:00', 2),
(10, N'Study plan with overload.pdf', N'/storage/special_requests/SR-2452/study-plan-with-overload.pdf', 'pdf', 271360, '2026-10-11 12:27:00', 8),
(11, N'Exchange programme certificate.png', N'/storage/special_requests/SR-2445/exchange-programme-certificate.png', 'png', 1146880, '2026-09-08 09:57:00', 1);
SET IDENTITY_INSERT special_request_documents OFF;
GO

/* request_status_history (35) */
SET IDENTITY_INSERT request_status_history ON;
INSERT INTO request_status_history (hist_id, hist_request_type, hist_old_status, hist_new_status, hist_change_date, hist_changed_by_role, hist_note, nreq_id, sreq_id) VALUES
(1, 'Normal', NULL, 'New', '2026-08-27 09:15:00', 'Student', N'Request submitted', 1, NULL),
(2, 'Normal', NULL, 'New', '2026-08-28 13:40:00', 'Student', N'Request submitted', 2, NULL),
(3, 'Normal', 'New', 'Cancelled', '2026-08-29 08:15:00', 'Student', N'Cancelled by the student', 2, NULL),
(4, 'Normal', 'New', 'Under Process', '2026-08-30 10:00:00', 'Scheduling Coordinator', NULL, 1, NULL),
(5, 'Normal', NULL, 'New', '2026-08-31 08:50:00', 'Student', N'Request submitted', 4, NULL),
(6, 'Normal', NULL, 'New', '2026-08-31 10:30:00', 'Student', N'Request submitted', 7, NULL),
(7, 'Normal', 'New', 'Under Process', '2026-09-01 09:10:00', 'Scheduling Coordinator', NULL, 7, NULL),
(8, 'Normal', 'New', 'Under Process', '2026-09-01 10:00:00', 'Scheduling Coordinator', NULL, 4, NULL),
(9, 'Normal', 'Under Process', 'Completed', '2026-09-01 12:10:00', 'Scheduling Coordinator', N'Added to section 202 — check the new time on your schedule.', 1, NULL),
(10, 'Normal', 'Under Process', 'Completed', '2026-09-02 11:20:00', 'Scheduling Coordinator', N'Registered in section 205 (Thursday).', 7, NULL),
(11, 'Special', NULL, 'With Advisor', '2026-09-02 13:10:00', 'Student', N'Request submitted', NULL, 4),
(12, 'Normal', 'Under Process', 'Completed', '2026-09-03 09:30:00', 'Scheduling Coordinator', N'Moved from section 201 to 202.', 4, NULL),
(13, 'Special', 'With Advisor', 'With Head of Department', '2026-09-04 09:40:00', 'Academic Advisor', N'The student is graduating this semester and IT 450 is the last course on the plan.', NULL, 4),
(14, 'Normal', NULL, 'New', '2026-09-05 11:30:00', 'Student', N'Request submitted', 6, NULL),
(15, 'Normal', 'New', 'Under Process', '2026-09-06 09:00:00', 'Scheduling Coordinator', NULL, 6, NULL),
(16, 'Special', 'With Head of Department', 'Rejected', '2026-09-06 11:15:00', 'Head of Department', N'The lab can only hold 25 students for safety reasons. The student will be given priority next semester.', NULL, 4),
(17, 'Normal', 'Under Process', 'Rejected', '2026-09-07 10:15:00', 'Scheduling Coordinator', N'The only section is at full capacity and the room cannot take more students. Please submit a special request if you need an exception.', 6, NULL),
(18, 'Special', NULL, 'With Advisor', '2026-09-08 10:00:00', 'Student', N'Request submitted', NULL, 1),
(19, 'Special', 'With Advisor', 'Cancelled', '2026-09-10 09:00:00', 'Student', N'Cancelled by the student', NULL, 1),
(20, 'Special', NULL, 'With Advisor', '2026-09-14 08:45:00', 'Student', N'Request submitted', NULL, 3),
(21, 'Special', NULL, 'With Advisor', '2026-09-15 10:05:00', 'Student', N'Request submitted', NULL, 5),
(22, 'Special', 'With Advisor', 'With Head of Department', '2026-09-16 10:20:00', 'Academic Advisor', N'The medical report covers the whole period since the add/drop deadline. I support the withdrawal.', NULL, 3),
(23, 'Special', 'With Advisor', 'Rejected', '2026-09-17 09:30:00', 'Academic Advisor', N'ACCT 305 is a core course of the MIS plan and cannot be replaced by FIN 301. Please register it next semester.', NULL, 5),
(24, 'Special', 'With Head of Department', 'Accepted', '2026-09-18 12:00:00', 'Head of Department', N'Approved on medical grounds. The coordinator will withdraw the student from section 201.', NULL, 3),
(25, 'Special', NULL, 'With Advisor', '2026-09-22 09:14:00', 'Student', N'Request submitted', NULL, 7),
(26, 'Special', 'With Advisor', 'With Head of Department', '2026-09-23 11:30:00', 'Academic Advisor', N'Shahd is in her final level with a strong GPA, and MIS 430 is running alongside with a passing grade. I support the exemption.', NULL, 7),
(27, 'Special', 'With Head of Department', 'Accepted', '2026-09-24 10:05:00', 'Head of Department', N'Approved. The student must pass MIS 430 this semester for the capstone grade to be recorded.', NULL, 7),
(28, 'Special', 'Accepted', 'Completed', '2026-09-25 10:40:00', 'Scheduling Coordinator', N'Registered in MIS 451 section 204 — Mon/Wed 10:00–11:50, room B51-118.', NULL, 7),
(29, 'Special', NULL, 'With Advisor', '2026-10-01 09:30:00', 'Student', N'Request submitted', NULL, 2),
(30, 'Special', NULL, 'With Advisor', '2026-10-05 11:00:00', 'Student', N'Request submitted', NULL, 6),
(31, 'Normal', NULL, 'New', '2026-10-06 10:20:00', 'Student', N'Request submitted', 3, NULL),
(32, 'Normal', 'New', 'Under Process', '2026-10-08 09:00:00', 'Scheduling Coordinator', NULL, 3, NULL),
(33, 'Special', 'With Advisor', 'With Head of Department', '2026-10-08 10:15:00', 'Academic Advisor', N'The previous course covers the same outcomes as MIS 321. I recommend the exemption.', NULL, 6),
(34, 'Special', NULL, 'With Advisor', '2026-10-11 12:30:00', 'Student', N'Request submitted', NULL, 8),
(35, 'Normal', NULL, 'New', '2026-10-12 08:05:00', 'Student', N'Request submitted', 5, NULL);
SET IDENTITY_INSERT request_status_history OFF;
GO

/* queue_tickets (8) */
SET IDENTITY_INSERT queue_tickets ON;
INSERT INTO queue_tickets (ticket_id, ticket_number, ticket_reason, ticket_join_time, ticket_call_time, ticket_end_time, ticket_status, student_id, coord_id) VALUES
(1, 'Q-481-001', N'Question about adding ENGL 102 after registration', '2026-08-31 09:02:00', '2026-08-31 09:20:00', '2026-08-31 09:31:00', 'Served', 1, 1),
(2, 'Q-481-002', N'Section change for IT 330', '2026-08-31 09:10:00', '2026-08-31 09:45:00', '2026-08-31 09:58:00', 'Served', 4, 2),
(3, 'Q-481-003', N'Capstone prerequisite exemption', '2026-09-22 08:40:00', '2026-09-22 08:55:00', '2026-09-22 09:10:00', 'Served', 1, 1),
(4, 'Q-481-004', N'IT 450 capacity', '2026-09-05 10:15:00', '2026-09-05 10:50:00', '2026-09-05 10:52:00', 'No Show', 9, 2),
(5, 'Q-481-005', N'Overload request documents', '2026-10-11 11:00:00', NULL, '2026-10-11 11:20:00', 'Cancelled', 2, NULL),
(6, 'Q-481-006', N'FIN 301 time conflict follow-up', '2026-10-13 08:35:00', '2026-10-13 08:52:00', NULL, 'Called', 3, 1),
(7, 'Q-481-007', N'Missed registration day — ACCT 201', '2026-10-13 08:41:00', NULL, NULL, 'Waiting', 8, NULL),
(8, 'Q-481-008', N'Prerequisite exemption for EET 360', '2026-10-13 08:47:00', NULL, NULL, 'Waiting', 6, NULL);
SET IDENTITY_INSERT queue_tickets OFF;
GO
SELECT t, n FROM (VALUES
 ('administrators',(SELECT COUNT(*) FROM administrators)),('departments',(SELECT COUNT(*) FROM departments)),
 ('students',(SELECT COUNT(*) FROM students)),('academic_advisors',(SELECT COUNT(*) FROM academic_advisors)),
 ('heads_of_department',(SELECT COUNT(*) FROM heads_of_department)),('scheduling_coordinators',(SELECT COUNT(*) FROM scheduling_coordinators)),
 ('courses',(SELECT COUNT(*) FROM courses)),('course_prerequisites',(SELECT COUNT(*) FROM course_prerequisites)),
 ('sections',(SELECT COUNT(*) FROM sections)),('enrollments',(SELECT COUNT(*) FROM enrollments)),
 ('normal_requests',(SELECT COUNT(*) FROM normal_requests)),('special_requests',(SELECT COUNT(*) FROM special_requests)),
 ('special_request_documents',(SELECT COUNT(*) FROM special_request_documents)),('request_status_history',(SELECT COUNT(*) FROM request_status_history)),
 ('queue_tickets',(SELECT COUNT(*) FROM queue_tickets))) v(t, n);
GO
