🔗 **Demo (produção):**
👉 [https://lucastito-casev360.onrender.com](https://lucastito-casev360.onrender.com)

> ⚠️ Observação: pode ser que o primeiro acesso demore um pouquinho (cold start). Se o sistema ficar um tempo sem uso (cerca de 15 minutos), ele pode dar uma pausa (spin down). Nesse caso, é só atualizar a página (refresh) e seguir normalmente.

---

# CaseV360 — TodoList

**Lucas Tito**

Gerenciamento de tarefas focado em **agilidade**, **baixo atrito** e **apoio por IA** para tomada de decisão.

---

## Destaques

* **UX ágil**

  * Edição de textos **inline**;
  * Criação de boards, listas e tarefas sem popups;
  * **Drag and drop** de listas para reorganização.

<br>
<p align="center">
  <img src="app/assets/images/agility_gif.gif" alt="screenshot 1" width="45%" border-radius:"10px"/>
</p>
<br>

* **IA integrada**

  * Analisa os quadros selecionados;
  * Resume o estado geral das tarefas;
  * Aponta urgências;
  * Sugere próximos passos;
  * Feedback motivacional.

<br>
<p align="center">
  <img src="app/assets/images/gif_summarize_tasks.gif" alt="screenshot 1" width="90%" border-radius:"10px"/>
</p>
<br>

* **Personalização**

  * Tema **claro / escuro**;
  * Cor customizável por lista.

<br>
<p align="center">
  <img src="app/assets/images/customization_gif.gif" alt="screenshot 1" width="45%" border-radius:"10px"/>
</p>
<br>

* **Internacionalização (i18n)**

  * Português e Inglês;
  * Idioma definido automaticamente pelo navegador;
  * Tradução aplicada inclusive a:

    * Nomes default;
    * Prompts da IA.

---

## 🖥️ Landing Page

* Não é só login:

  * Apresenta as principais funcionalidades;
  * Design moderno;
  * Uso de **GIFs** para demonstrar funcionalidades reais da aplicação.

<br>
<p align="center">
  <img src="https://github.com/user-attachments/assets/507450c1-bae6-4212-b9b8-bb20663753b0" alt="screenshot 1" width="55%" border-radius:"10px"/>
</p>
<br>


---

## ☁️ Deploy no Render

* Instâncias separadas:

  * Banco de dados;
  * Aplicação (front + back).
* Health Check configurado.

---

## 🐳 Build

* **Docker** configurado para ambientes de:

  * Desenvolvimento (hot reload);
  * Produção.

---

## Arquitetura

A aplicação utiliza uma arquitetura full-stack baseada no **MVC do Ruby on Rails**, com **Hotwire (Turbo e Stimulus)** para interações dinâmicas no frontend. A interface é renderizada no servidor e atualizada de forma parcial, sem recarregar a página inteira.

As ações do usuário são processadas pelos controllers, que aplicam as regras de negócio e persistem os dados no banco. Integrações externas ficam isoladas em serviços, mantendo a solução simples, organizada e fácil de manter. A seguir é possível observar o diagrama de arquitetura:


<br>
<p align="center">
  <img src="docs/Diagrama de Arquitetura.png" alt="screenshot 1" width="100%" border-radius:"10px"/>
</p>
<br>


---

## Stack

* Ruby on Rails;
* PostgreSQL;
* Tailwind CSS;
* JavaScript;
* HTML / CSS;
* Firebase Auth;
* OpenRouter (IA).

---

## Extras

* Truncate automático de caracteres para evitar quebra de layout com nomes longos.

---
