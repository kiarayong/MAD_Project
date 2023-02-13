class Meal {
  final String timing, timetaken, name, image, kcal;
  final List ingredient,preparation;

  Meal({
    this.timing,
    this.timetaken,
    this.name,
    this.image,
    this.kcal,
    this.preparation,
    this.ingredient,
  });
}

final meals = [
  Meal(
      timing: "BREAKFAST",
      name: "Avocado Tacos",
      image: "images/tacos.jpeg",
      timetaken: "15 mins",
      kcal: "200 kcal",
      preparation: ["Brush a medium nonstick stick skillet lightly with olive oil and bring to medium heat. Add the spinach and pinches of salt and pepper and sauté until the spinach is wilted. Work in batches, if necessary.",
      "Wipe out the skillet and scramble the eggs. Brush the skillet lightly with olive oil and bring to medium heat. Add the eggs, let them cook for a few seconds, and then stir and scramble the eggs until just set.",
      "Assemble the tacos with the eggs, spinach, avocado slices, and scoops of tomatillo salsa. Top with the microgreens and sliced serranos and serve with lime wedges, if desired.",
      ],
      ingredient: [
        "5 cups fresh spinach",
        "3 large eggs",
        "Extra-virgin olive oil, for brushing",
        "Sea salt and freshly ground black pepper",
        "4 to tortillas, charred or warmed",
        "½ avocado, sliced",
        "Roasted Tomatillo Salsa, for serving",
        "Microgreens, optional",
        "Sliced serrano peppers, optional",
        "Lime wedges, if desired, for serving",
      ],
      ),
  Meal(
      timing: "LUNCH",
      name: "Salmon Salad",
      image: "images/salmon.webp",
      timetaken: "25 mins",
      kcal: "478 kcal",
      ingredient: [
        "250g new potatoes, sliced",
        "160g French beans, trimmed",
        "2 wild salmon fillets",
        "80g salad leaves",
        "4 small clementines", 
        "3 sliced, 1 juiced",
        "handful of basil, chopped",
        "handful of coriander, chopped",
      ],
      preparation: [
        "Steam the potatoes and beans in a steamer basket set over a pan of boiling water for 8 mins. Arrange the salmon fillets on top and steam for a further 6-8 mins, or until the salmon flakes easily when tested with a fork.",
        "Meanwhile, mix the dressing ingredients together along with the clementine juice. If eating straightaway, divide the salad leaves between two plates and top with the warm potatoes and beans and the clementine slices. ",
        "Arrange the salmon fillets on top, scatter over the herbs and spoon over the dressing. If taking to work, prepare the potatoes, beans and salmon the night before, then pack into a rigid airtight container with the salad leaves kept separate. Put the salad elements together and dress just before eating to prevent the leaves from wilting.",
      ]

      ),
  Meal(
      timing: "DINNER",
      name: "Mushroom Risotto",
      image: "images/mushroom.jpeg",
      timetaken: "30 mins",
      kcal: "404 kcal",
      ingredient: [
        "4 tablespoons extra-virgin olive oil",
        "1½ pounds mixed mushrooms, chopped",
        "¾ teaspoon sea salt, plus more to taste",
        "Freshly ground black pepper",
        "1 medium yellow onion, chopped",
        "2 garlic cloves, finely chopped",
        "1 tablespoon fresh thyme leaves",
        "1½ cups uncooked Arborio rice, rinsed",
        "⅔ cup dry white wine",
        "5 cups warmed vegetable broth",
        "½ cup grated pecorino or Parmesan cheese*, plus more for serving",
        "Chopped fresh parsley, for garnish",
      ],
      preparation: [
        "Heat 2 tablespoons of the olive oil in a Dutch oven or large, deep skillet over medium heat. Add the mushrooms, ½ teaspoon of the salt, and several grinds of pepper and toss to coat. Cook, stirring only occasionally, for 8 minutes, or until soft and browned. Remove from the pan and set aside. Work in batches if necessary.",
        "Wipe out the pan and return it to the heat. Add the remaining 2 tablespoons olive oil, the onion, and the remaining ¼ teaspoon sea salt. Cook, stirring occasionally, for 5 to 8 minutes, or until softened. Stir in the garlic, thyme, and rice. Let cook for 1 minute, then add the wine. Stir and cook for 1 to 3 minutes, or until the wine cooks down.",
        "Add the broth ¾ cup at a time, stirring constantly and allowing each addition of broth to be absorbed before adding the next. With the final addition of broth, stir two-thirds of the sautéed mushrooms into the risotto. Cook until the risotto is creamy and the rice has a slight al dente bite. Stir in the cheese and season to taste.",
        "Top with the remaining sautéed mushrooms, garnish with parsley, and serve with more grated cheese, if desired.",
      ],
      ),
      Meal(
      timing: "DINNER",
      name: "Aspragus Risotto",
      image: "images/asparagus.jpeg",
      timetaken: "40 mins",
      kcal: "618 kcal",
      ingredient: [
        "1 tablespoon extra-virgin olive oil",
        "2 cups chopped leeks",
        "½ teaspoon sea salt, plus more to taste",
        "2 garlic cloves, minced",
        "1 cup uncooked Arborio rice, rinsed",
        "½ cup dry white wine",
        "4 cups vegetable broth, at room temperature",
        "1 bunch asparagus, tough ends trimmed, stalks chopped into small pieces",
        "1 tablespoon fresh lemon juice",
        "2 tablespoons chopped chives",
        "¼ cup fresh herbs, parsley, basil, tarragon, and/or dill, plus more for garnish",
        "Lemon zest, for garnish",
        "Grated pecorino cheese, optional",
        "Freshly ground black pepper",
      ],
      preparation: [
        "Heat the olive oil in a large skillet or medium Dutch oven over medium heat. Add the leeks and season with the salt and a few grinds of pepper. Cook, stirring occasionally, for 4 to 5 minutes, or until soft. Add the garlic and stir to incorporate. Stir in the rice and let it cook for 1 minute. Stir in the wine and cook for another 1 to 2 minutes, or until the wine cooks down.",
        "Add the broth, ¾ cup at a time, stirring continuously between each addition. Allow each addition of broth to be absorbed by the rice before adding the next. Add the asparagus with the last addition of the broth. Cook until the rice is al dente. The risotto should be soft and creamy.",
        "Add the lemon juice, chives, and mixed herbs and season to taste. Garnish with the lemon zest and more herbs. Serve with grated cheese, if desired.",
      ],

      ),
  Meal(
      timing: "BREAKFAST",
      name: "Baked Egg",
      image: "images/eggs.jpeg",
      timetaken: "20 mins",
      kcal: "100 kcal",
      ingredient: [
        "½ teaspoon extra-virgin olive oil, per small ramekin",
        "2 eggs, per small ramekin",
        "Sea salt and freshly ground black pepper",
      ],
      preparation: [
        "Preheat the oven to 375°F and grease a 4.5-inch ramekin with the olive oil. Place it on a baking sheet (the baking sheet makes it easier to move the ramekin in and out of the oven).",
        "Crack 2 eggs into the ramekin and bake for 10 to 15 minutes (we do about 12), or until the egg whites are just set and the yolk is still runny. If using a muffin tin, bake 9 to 12 minutes. Be careful not to overcook, the baked eggs should look a little underdone as you take them out. They will set a bit more as they cool out of the oven.",
        "Top the baked eggs with feta, chives, dill, asparagus, peas, and/or microgreens, if desired, or see the blog post above for additional topping ideas.",
      ],
      ),

];
