def spongeMeme(sentence):
    split_sentence = list(sentence)
    split_sentence_modified = [word.upper() if (split_sentence.index(word) % 2 == 0) else word for word in split_sentence]
    return ''.join(split_sentence_modified)
