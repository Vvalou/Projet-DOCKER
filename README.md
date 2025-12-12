═══════════════════════════════════════════════════════════════

╔══════════════════════════════════════════════════════════════╗
║                                                              ║
║           TD Docker - Conception d'une application           ║
║                                                              ║
║                                                              ║
║                    BY Valentin VERGULT                       ║
║                    Classe ASRBD - EPSI                       ║
║                                                              ║
╚══════════════════════════════════════════════════════════════╝

                // Arborescence du projet //

mini-projet/
│
├── .env                          
├── docker-compose.yml            
├── README.md                    
├── deploy.sh                    
│
├── 📁 api/                         
│   ├── server.js                   
│   ├── package.json                
│   ├── Dockerfile                 
│   └── .dockerignore              
│
├── 📁 frontend/
│   ├── index.html
│   ├── nginx.conf
│   └── Dockerfile
│
└── 📁 database/
    └── init.sql

═══════════════════════════════════════════════════════════════