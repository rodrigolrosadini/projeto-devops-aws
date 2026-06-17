📝 Descrição

Este projeto demonstra a transição de deploys manuais e sujeitos a erros para um fluxo de infraestrutura escalável e isolada utilizando Docker e AWS.

🚀 Tecnologias Utilizadas

Docker: Containerização da aplicação utilizando Nginx (Alpine).
AWS ECR: Armazenamento seguro de imagens Docker em repositório privado.
AWS EC2: Provisão de servidor na nuvem para hospedagem do site.
AWS IAM: Implementação de políticas de segurança (Roles) seguindo o Princípio do Privilégio Mínimo.

🏗️ Desafios Resolvidos

Isolamento: Eliminação de conflitos de dependência entre múltiplas aplicações.
Padronização: Garantia de que a aplicação rode da mesma forma no ambiente de desenvolvimento e produção.
Segurança: Configuração de IAM Roles para que a instância EC2 tenha acesso ao ECR sem exposição de credenciais estáticas.

💡 Aprendizados

Criação de Dockerfile otimizados.
Autenticação e push/pull de imagens privadas no ECR.
Configuração de Security Groups e acesso via SSH.

<img width="1130" height="368" alt="print 4" src="https://github.com/user-attachments/assets/99362d08-ad5c-4cac-a221-1c013dc1d986" />
