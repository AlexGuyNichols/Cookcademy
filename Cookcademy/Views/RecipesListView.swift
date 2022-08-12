//
//  ContentView.swift
//  Cookcademy
//
//  Created by Alex Nichols on 12/08/2022.
//

import SwiftUI

struct RecipesListView: View {
	@StateObject var recipeData = RecipeData()
	
	let listBackgroundColor = AppColor.background
	let listTextColor = AppColor.foreground
	
	var body: some View {
		List {
			ForEach(recipes) { recipe in
				NavigationLink(recipe.mainInformation.name, destination: RecipeDetailView(recipe: recipe))
			}
			.listRowBackground(listBackgroundColor)
			.foregroundColor(listTextColor)
		}
		.navigationTitle(navigationTitle)
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

