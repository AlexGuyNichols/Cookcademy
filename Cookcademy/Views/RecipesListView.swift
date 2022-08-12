//
//  ContentView.swift
//  Cookcademy
//
//  Created by Alex Nichols on 12/08/2022.
//

import SwiftUI

struct RecipesListView: View {
	@StateObject var recipeData = RecipeData()
    var body: some View {
		List {
			ForEach(recipes) {
				recipe in Text(recipe.mainInformation.name)
			}.navigationTitle(navigationTitle)
		}
    }
}

extension RecipesListView {
	var recipes: [Recipe] {
		recipeData.recipes
	}
	
	var navigationTitle: String {
		"All Recipes"
	}
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
        RecipesListView()
		}
    }
}
