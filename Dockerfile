# 1. Base Image: Industry practice hai ki Playwright ka official image use karein 
# taaki browsers aur OS dependencies manually install na karni pade.
FROM mcr.microsoft.com/playwright:v1.60.0-jammy

# 2. Container ke andar ek folder banayenge jahan hamara code rahega
WORKDIR /app

# 3. Pehle sirf package.json copy karenge (Yeh Docker caching ke liye best practice hai)
COPY package*.json ./

# 4. Saari dependencies install karenge
RUN npm install

# 5. Ab baaki ka saara code container mein copy kar denge
COPY . .

# 6. Default command jo container start hone par chalegi
CMD ["npx", "playwright", "test"]