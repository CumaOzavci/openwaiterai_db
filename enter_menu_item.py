import os
import psycopg2
from psycopg2 import sql

def insert_menu_data(data):
    """
    Inserts a new menu item, its ingredients, allergens, and nutritional values into the database.

    Args:
        data (dict): A dictionary containing the menu item details. Expected structure:
        {
            "category_id": 1,
            "menu_item": {
                "name": "Fresh Orange Juice",
                "description": "Freshly squeezed orange juice."
            },
            "ingredients": ["Orange"],
            "allergens": [],
            "nutritional_values": {
                "calories": 50,
                "protein": 1.2,
                "carbohydrates": 11.8,
                "fats": 0.2,
                "saturated_fats": 0.0,
                "sugar": 9.0,
                "salt": 0.01,
                "fiber": 0.5
            }
        }
    """

    try:
        # Establish the database connection
        conn = psycopg2.connect(
            dbname=os.getenv("OPENWAITERAI_DB_NAME"),
            host=os.getenv("OPENWAITERAI_DB_HOST"),
            port=os.getenv("OPENWAITERAI_DB_PORT"),
            user=os.getenv("OPENWAITERAI_DB_USER"),
            password=os.getenv("OPENWAITERAI_DB_PASSWORD"),
        )
        cursor = conn.cursor()

        # Step 1: Insert the menu item
        cursor.execute(
            "INSERT INTO menuitems (category_id, name, description) VALUES (%s, %s, %s) RETURNING id",
            (data["category_id"], data["menu_item"]["name"], data["menu_item"]["description"])
        )
        menu_item_id = cursor.fetchone()[0]

        # Step 2: Insert ingredients and associate them with the menu item
        for ingredient in data.get("ingredients", []):
            cursor.execute("SELECT id FROM ingredients WHERE name = %s", (ingredient,))
            ingredient_row = cursor.fetchone()
            if ingredient_row:
                ingredient_id = ingredient_row[0]
            else:
                cursor.execute("INSERT INTO ingredients (name) VALUES (%s) RETURNING id", (ingredient,))
                ingredient_id = cursor.fetchone()[0]

            cursor.execute(
                "INSERT INTO menuitemingredients (menu_item_id, ingredient_id) VALUES (%s, %s) ON CONFLICT DO NOTHING",
                (menu_item_id, ingredient_id)
            )

        # Step 3: Insert allergens and associate them with the menu item
        for allergen in data.get("allergens", []):
            cursor.execute("SELECT id FROM allergens WHERE name = %s", (allergen,))
            allergen_row = cursor.fetchone()
            if allergen_row:
                allergen_id = allergen_row[0]
            else:
                cursor.execute("INSERT INTO allergens (name) VALUES (%s) RETURNING id", (allergen,))
                allergen_id = cursor.fetchone()[0]

            cursor.execute(
                "INSERT INTO menuitemallergens (menu_item_id, allergen_id) VALUES (%s, %s) ON CONFLICT DO NOTHING",
                (menu_item_id, allergen_id)
            )

        # Step 4: Insert nutritional values
        nutritional_values = data.get("nutritional_values", {})
        cursor.execute(
            """
            INSERT INTO nutritionalvalues (
                menu_item_id, calories, protein, carbohydrates, fats, saturated_fats, sugar, salt, fiber
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
            """,
            (
                menu_item_id,
                nutritional_values.get("calories"),
                nutritional_values.get("protein"),
                nutritional_values.get("carbohydrates"),
                nutritional_values.get("fats"),
                nutritional_values.get("saturated_fats"),
                nutritional_values.get("sugar"),
                nutritional_values.get("salt"),
                nutritional_values.get("fiber")
            )
        )

        # Commit the transaction
        conn.commit()

    except Exception as e:
        if conn:
            conn.rollback()
        print(f"An error occurred: {e}")

    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()

# Example usage
data = {
    "category_id": 20,  # ID of the "Beverages" category
    "menu_item": {
        "name": "Freshly Squeezed Orange Juice",
        "description": "Enjoy the freshness of our freshly squeezed orange juice alongside your meals and desserts."  # ([tavukdunyasi.com](https://www.tavukdunyasi.com/lezzetler/icecekler/sikma-portakal-suyu/))
    },
    "ingredients": [
        "Fresh oranges"
    ],
    "allergens": [
        "None specified"
    ],
    "nutritional_values": {
        "calories": 60,  # kcal
        "protein": 0.40,  # g
        "carbohydrates": 14.64,  # g
        "fats": 0.17,  # g
        "saturated_fats": 0.00,  # g
        "sugar": 8.00,  # g
        "salt": 0.00,  # g
        "fiber": 0.1  # g
    }
}

























insert_menu_data(data)
