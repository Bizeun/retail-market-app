/*
  Warnings:

  - A unique constraint covering the columns `[phone]` on the table `SMSToken` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "SMSToken" ADD COLUMN "phone" TEXT;

-- CreateTable
CREATE TABLE "Product" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "price" REAL NOT NULL,
    "photo" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL,
    "userId" INTEGER NOT NULL,
    CONSTRAINT "Product_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "SMSToken_phone_key" ON "SMSToken"("phone");
