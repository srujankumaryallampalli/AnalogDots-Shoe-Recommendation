# AnalogDots Shoe Recommendation System

This project is developed as part of an internship assignment at AnalogDots. It is a basic shoe recommendation system based on synthetic user interaction data. The system leverages frequency and recency of interactions to recommend shoes, while also offering personalized care suggestions (e.g., cleaning or replacement) based on usage patterns.

## 📌 Features

- Recommends shoes to users based on past views and purchases.
- Suggests cleaning or replacement reminders based on wear/clean interactions.
- Uses a sample dataset with user-shoe interactions.
- Modular, easy-to-understand Python code using pandas and scikit-learn.

---

## 📁 Project Structure

```
AnalogDots_Recommendation_System/
├── README.md
├── requirements.txt
├── schema.sql
├── data/
│   └── sample_user_interactions.csv

├── recommendation_system/
│   └── analogdots_recommender.py
```

---

## 📊 Dataset

The sample dataset includes the following columns:

- `interaction_id`: Unique ID for each interaction.
- `user_id`: ID of the user.
- `shoe_id`: ID of the shoe.
- `interaction_type`: One of `view`, `purchase`, `clean`, `wear`.
- `timestamp`: Date and time of interaction (ISO format).

---

## 🛠 Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone <your-repo-url>
   cd AnalogDots_Recommendation_System
   ```

2. **Install Requirements**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the Recommendation System**
   ```bash
   python recommendation_system/analogdots_recommender.py
   ```

---

## 🧠 Algorithm Logic

### Shoe Recommendation
- Sort user interactions by recency (timestamp).
- Recommend shoes most frequently viewed or purchased in the recent past.

### Personalized Care Suggestions
- If a user has worn a shoe > 5 times without cleaning, suggest cleaning.
- If a shoe has been worn > 15 times overall, suggest replacement.

---

## 🗃 Database Schema

The PostgreSQL schema includes three tables:
- `users`
- `shoes`
- `interactions`

See `schema.sql` for full details.

---

## ✅ Sample Output

The script outputs:
- Recommended shoes per user
- Shoes that need cleaning or replacement

---

## ✍️ Author

This project was created as part of a Machine Learning Engineer / Data Scientist assessment at AnalogDots.
