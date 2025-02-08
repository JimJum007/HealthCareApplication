HealthCare Application
1. การเตรียมฐานข้อมูลก่อนการสร้างโปรเจกต์
ก่อนเริ่มต้นโครงการ จำเป็นต้องตั้งค่าฐานข้อมูล MySQL และเพิ่มตารางที่จำเป็นสำหรับการทำงานของระบบ:

ติดตั้ง MySQL หากยังไม่มี ให้ดาวน์โหลดและติดตั้งจาก MySQL.
สร้างฐานข้อมูล ด้วยคำสั่ง:
sql
คัดลอก
แก้ไข
CREATE DATABASE healthcare;
ตั้งค่าการเชื่อมต่อฐานข้อมูล แก้ไขไฟล์ .env โดยกำหนดค่า DATABASE_URL ให้ตรงกับการตั้งค่าของ MySQL:
ini
คัดลอก
แก้ไข
DATABASE_URL="mysql://root@localhost:3306/healthcare"
ตั้งค่า Prisma (สำหรับ Backend)
ติดตั้ง Prisma CLI:
nginx
คัดลอก
แก้ไข
npm install -g prisma
รันคำสั่งเพื่อสร้างตารางฐานข้อมูล:
csharp
คัดลอก
แก้ไข
npx prisma migrate dev --name init
2. การนำเข้าโปรเจกต์
ให้โคลนทั้ง 3 repository ลงในเครื่อง:

sh
คัดลอก
แก้ไข
git clone https://github.com/JimJum007/HealthCareApplication.git
git clone https://github.com/JimJum007/HealthCareApp_backend.git
git clone https://github.com/JimJum007/HealthCareApp_frontend.git
3. การตั้งค่าฐานข้อมูลใน Backend
เข้าไปในโฟลเดอร์ Backend:
sh
คัดลอก
แก้ไข
cd HealthCareApp_backend
ติดตั้ง dependencies:
sh
คัดลอก
แก้ไข
npm install
ตั้งค่าตัวแปรสภาพแวดล้อมใน .env:
ini
คัดลอก
แก้ไข
DATABASE_URL="mysql://root@localhost:3306/healthcare"
JWT_SECRET=DontreeMeenProject
PORT=3000
SECRET_KEY=DontreeMeenProject
CLIENT_ORIGIN=http://localhost:3000
รันเซิร์ฟเวอร์:
sh
คัดลอก
แก้ไข
npm start
4. คำสั่ง Build โปรเจกต์ Frontend
เข้าไปที่โฟลเดอร์ Frontend:
sh
คัดลอก
แก้ไข
cd HealthCareApp_frontend
ติดตั้ง dependencies:
sh
คัดลอก
แก้ไข
npm install
รันคำสั่ง Build:
sh
คัดลอก
แก้ไข
npm run build
5. การรัน Emulator หรือ โทรศัพท์ Android
หากต้องการรันแอปพลิเคชันบน Emulator หรืออุปกรณ์จริง ให้ทำดังนี้:

5.1 ใช้ Android Emulator (AVD)
เปิด Android Studio และไปที่ Tools > AVD Manager
สร้าง Emulator ใหม่ (หากยังไม่มี)
เรียกใช้งาน Emulator แล้วรันคำสั่ง:
sh
คัดลอก
แก้ไข
npx react-native run-android
5.2 ใช้โทรศัพท์ Android จริง
เปิด Developer Options และเปิดใช้งาน USB Debugging
เชื่อมต่อโทรศัพท์เข้ากับคอมพิวเตอร์ผ่าน USB
ตรวจสอบว่าอุปกรณ์ถูกตรวจพบโดยใช้คำสั่ง:
sh
คัดลอก
แก้ไข
adb devices
รันแอป:
sh
คัดลอก
แก้ไข
npx react-native run-android
