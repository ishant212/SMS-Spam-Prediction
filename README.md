# 📩 Email / SMS Spam Classifier

An interactive web app that detects spam messages in real time using Machine Learning + NLP.

🌐 **Live Demo**: [Click here to try the app](YOUR_RENDER_LINK)  
💻 **GitHub Repo**: [This repository](REPO_LINK)

---

## 🚀 Features
- Detects spam messages with **Multinomial Naive Bayes**
- **NLP preprocessing pipeline**: tokenization, stopword removal, stemming
- **Confidence scores** with probability display
- Interactive UI built with **Streamlit**
- Fun **Lottie animations**
- Deployed using **Docker on Render**

---

## 🛠️ Tech Stack
- **Python 3.10**
- **scikit-learn**
- **NLTK**
- **Streamlit**
- **Docker** (for deployment)
- **Render** (cloud hosting)

---

## 📂 Project Structure
.
├── app.py # Streamlit web app
├── model.pkl # Trained ML model
├── vectorizer.pkl # TF-IDF vectorizer
├── requirements.txt # Python dependencies
├── Dockerfile # Deployment setup
├── render.yaml # Render service config
└── README.md # Project documentation

yaml
Copy code

---

## ⚡ How to Run Locally
```bash
# Clone the repo
git clone https://github.com/yourusername/spam-classifier.git
cd spam-classifier

# Install dependencies
pip install -r requirements.txt

# Run the app
streamlit run app.py

🙌 Acknowledgments

Built by Ishant Shekhar Eeshu as a personal project.
Inspired by real-world applications of NLP in spam detection.


```
