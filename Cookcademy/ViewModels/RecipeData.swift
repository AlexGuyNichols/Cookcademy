//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Alex Nichols on 12/08/2022.
//

import Foundation

class RecipeData: ObservableObject {
	@Published var recipes = Recipe.testRecipes
}
