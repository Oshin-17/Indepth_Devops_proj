# 1. Base image
FROM node:18

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy files from your local machine to the container
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of your application code
COPY . .

# 6. Expose a port
EXPOSE 3000

# 7. Command to run the app
CMD ["node", "app.js"]