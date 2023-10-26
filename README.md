# Doctorate Against Humanity

Because it's hard to finish a doctorate while keeping humanity.

## How to generate cards

### Prepare the cards

There are two types of cars in this game ("white" and "black", according to the color of their back). 
Black cards have sentences with blacks, white cards are used to fill in the blanks.

Both types of cards are generated starting from two lists, `black.txt` and `white.txt`. 
The lists specify the contents of each card, one per line (see examples).
For black cards, "blanks" are represented by `_` characters. For example, the line 
```
Study _ and become _!
```
will be rendered a card saying "Study *blank* to become a *blank*!".

**Note**: Remember that cards will be rendered with latex, so if you want to have quotes (`"`), you have to use latex-style:
```
``opening and closing quotes''.
```

### Build the deck

To generate a deck of cards:

1. Fill `white.txt` and `black.txt` with the cards
2. Run `make clean` and `make` to clean 
3. The generated `tex` file is `cards.tex`, while the output `PDF` is in `build/cards.pdf`

