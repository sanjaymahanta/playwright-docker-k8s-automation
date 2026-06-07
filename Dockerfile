# 1. Base Image: Using the official Playwright image as an industry best practice 
# to avoid manual installation of browsers and OS dependencies.
FROM mcr.microsoft.com/playwright:v1.60.0-jammy

# 2. Set the working directory inside the container where our code will reside.
WORKDIR /app

# 3. Copy only package.json first (This is a best practice for Docker layer caching).
COPY package*.json ./

# 4. Install all the necessary Node dependencies.
RUN npm install

# 5. Copy the rest of the framework code into the container.
COPY . .

# 6. Define the default command to execute when the container starts.
CMD ["npx", "playwright", "test"]