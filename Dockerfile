FROM node:18-alpine AS build
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json

COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of your application files
COPY . .

RUN npm run build


FROM node:18-alpine AS Production

WORKDIR /app

COPY --from=build /app/dist /app/build

RUN npm install -g serve
 
# Expose the port your app runs on
EXPOSE 3000
 
# Define the command to run your app
CMD ["serve", "-s", "build", "-l", "3000"]

