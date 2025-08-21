**🍽️ Dashboards para Restaurante — Google Sheets + MS SQL + Power BI**

***Projeto de análise ponta a ponta integrando:***

🧾 Google Sheets como fonte operacional (relatorio_dashboard_restaurante.xlsx)

🗄️ MS SQL Server para armazenamento/modelagem

📊 Power BI para KPIs e visualizações

Repositório: ***restaurante-dashboards*** – **by Victor Hugo Miranda Crispim**

**🎯 Objetivos do Projeto**

Acompanhar vendas mensais e crescimento 📈

Identificar produtos/categorias campeãs 🏆

Medir ticket médio e margem 💵

Monitorar status dos pedidos (Concluído x Em Preparo) 🧑‍🍳

Google Sheets (.xlsx/.csv)
        ↓
SQL Server (staging → dimensões/fatos → views analíticas)
        ↓
Power BI (modelo, DAX, visuais, publicação)

**📂 Estrutura do Repositório**

restaurante-dashboards/
restaurante-dashboards/
├── data/
│  └── relatorio_dashboard_restaurante.xlsx
│   
├── sql/
│   ├── modelo_restaurante.sql
│   └── consultas_analise.sql 
├── powerbi/
│   ├── dashboards_restaurante.pbix
│   └── images/
│       └── grafico.png    # gráfico 
└── docs/

**🖼️ Dashboard Power BI**
**📊 Analise Geral**

[📊 Analise Geral](images/grafico.png)



**⚙️ Como Reproduzir**

Exportar Google Sheets para data/relatorio_dashboard_restaurante.xlsx

Executar sql/modelo_restaurante.sql no SQL Server

(Opcional) Rodar data/script_import.sql para carregar dados em lote

Abrir powerbi/dashboards_restaurante.pbix e apontar a conexão para seu SQL Server

Atualizar medidas DAX e visuais conforme necessidade

**✅ Requisitos**

MySQL, SQL Server 2019+ ou Azure SQL 🗄️

Power BI Desktop 🟡

Google Sheets 🧾

**👤 Autor**

***Victor Hugo Miranda Crispim***
GitHub: https://github.com/engvictortech


   


    


