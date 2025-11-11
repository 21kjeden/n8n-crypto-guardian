FROM n8nio/n8n:latest

# Required for Render
ENV NODE_ENV=production
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=https
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Expose Render's dynamic port
EXPOSE ${PORT}

# Start n8n correctly
CMD ["n8n", "start"]
