package tree_sitter_graphql_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_graphql "github.com/dralletje/tree-sitter-graphql/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_graphql.Language())
	if language == nil {
		t.Errorf("Error loading Graphql grammar")
	}
}