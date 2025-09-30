text[0] = "Hello World";
text[1] = "This is a test message of a very long piece of text to make sure the text wrapping works.";
text[2] = "Hopefully it does";

text_current = 0;
text_last = 1;
text_width = 300;
text_x = 32;
text_y = 32;

char_current = 1;
char_speed = 0.25;

text[text_current] = string_wrap(text[text_current], text_width);