# Utiliser une image de base Node.js
FROM node:18-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances et installer [cite: 46]
COPY package*.json ./
RUN npm install --omit=dev

# Copier le code source [cite: 47]
COPY . .

# L'application écoute sur le port 3000 [cite: 53]
EXPOSE 3000

# Démarrer l'application [cite: 49]
CMD ["node", "app.js"]