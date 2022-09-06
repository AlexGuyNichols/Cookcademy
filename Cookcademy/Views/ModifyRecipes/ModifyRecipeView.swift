//
//  ModifyRecipeView.swift
//  Cookcademy
//
//  Created by Alex Nichols on 22/08/2022.
//

import SwiftUI

struct ModifyRecipeView: View {
	@Binding var recipe: Recipe
	
	@State private var selection = Selection.main
	
	
    var body: some View {
		VStack {
			Picker("Select recipe component", selection: $selection) {
				Text("Main Info").tag(Selection.main)
				Text("Ingredients").tag(Selection.ingredients)
				Text("Directions").tag(Selection.directions)
			}
			.pickerStyle(SegmentedPickerStyle())
			.padding()
			switch selection {
			case .main:
				ModifyMainInformationView(mainInformation: $recipe.mainInformation)
			case .ingredients:
				ModifyComponentsView(ingredients: $recipe.ingredients)
			case .directions:
				Text("Directions Editor")
			}
			Spacer()
		}
    }
	
	enum Selection {
		case main
		case ingredients
		case directions
	}
}

struct ModifyRecipeView_Previews: PreviewProvider {
	@State static var recipe = Recipe()
    static var previews: some View {
		ModifyRecipeView(recipe: $recipe)
    }
}


//Button("Fill in the recipe with test data.") {
//recipe.mainInformation = MainInformation(name: "test", description: "test", author: "test", category: .breakfast)
//		 recipe.directions = [Direction(description: "test", isOptional: false)]
//		 recipe.ingredients = [Ingredient(name: "test", quantity: 1.0, unit: .none)]
