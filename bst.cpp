int isBST(struct node* node) 
{ 
if (node == NULL) 
	return 1; 
	
/* false if left is > than node */
if (node->left != NULL && node->left->data > node->data) 
	return 0; 
	
/* false if right is < than node */
if (node->right != NULL && node->right->data < node->data) 
	return 0; 
	
/* false if, recursively, the left or right is not a BST */
if (!isBST(node->left) || !isBST(node->right)) 
	return 0; 
	
/* passing all that, it's a BST */
return 1; 
} 

