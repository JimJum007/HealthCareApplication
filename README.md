คู่มือการติดตั้ง
1. การเตรียมฐานข้อมูลก่อนการสร้างโปรเจกต์
ก่อนเริ่มต้นโครงการ จำเป็นต้องตั้งค่าฐานข้อมูล MySQL และเพิ่มตารางที่จำเป็นสำหรับการทำงานของระบบ:
1.	ติดตั้ง MySQL หากยังไม่มี ให้ดาวน์โหลดและติดตั้งจาก MySQL.
2.	สร้างฐานข้อมูล ด้วยคำสั่ง
	CREATE DATABASE healthcare;
3.	ตั้งค่าการเชื่อมต่อฐานข้อมูล แก้ไขไฟล์ .env โดยกำหนดค่า DATABASE_URL ให้ตรงกับการตั้งค่าของ MySQL: DATABASE_URL="mysql://root@localhost:3306/healthcare"
4.	ตั้งค่า Prisma (สำหรับ Backend)
ติดตั้ง Prisma CLI : npm install -g prisma
รันคำสั่งเพื่อสร้างตารางฐานข้อมูล: npx prisma migrate dev --name init
5.	การนำเข้าโปรเจกต์
ให้โคลนทั้ง 3 repository ลงในเครื่อง:
git clone https://github.com/JimJum007/HealthCareApplication.git git clone https://github.com/JimJum007/HealthCareApp_backend.git git clone https://github.com/JimJum007/HealthCareApp_frontend.git
6.	การตั้งค่าฐานข้อมูลใน Backend
เข้าไปในโฟลเดอร์ Backend: cd HealthCareApp_backend
ติดตั้ง dependencies: npm install
ตั้งค่าตัวแปรสภาพแวดล้อมใน .env: 
DATABASE_URL="mysql://root@localhost:3306/healthcare" JWT_SECRET=DontreeMeenProject 
PORT=3000 
SECRET_KEY=DontreeMeenProject 
CLIENT_ORIGIN=http://localhost:3000
7.	รันเซิร์ฟเวอร์: npm start
8.	คำสั่ง Build โปรเจกต์ Frontend
เข้าไปที่โฟลเดอร์ Frontend: cd HealthCareApp_frontend
ติดตั้ง dependencies: npm install
รันคำสั่ง Build: npm run build

9.	การรัน Emulator หรือ โทรศัพท์ Android
เปิด Android Studio และไปที่ Tools > AVD Manager
สร้าง Emulator ใหม่ (หากยังไม่มี)
เรียกใช้งาน Emulator แล้วรันคำสั่ง: npx react-native run-android

10.	ใช้โทรศัพท์ Android จริง
เปิด Developer Options และเปิดใช้งาน USB Debugging
เชื่อมต่อโทรศัพท์เข้ากับคอมพิวเตอร์ผ่าน USB
ตรวจสอบว่าอุปกรณ์ถูกตรวจพบโดยใช้คำสั่ง : adb devices
รันแอป: npx react-native run-android
