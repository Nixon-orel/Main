#Напишите программу, которая читает текст из файла и считает количество слов из трех букв
def three_words(str)
    str = str.split
    result = str.map {|i| i.scan(/^...$/)}
    puts result.flatten.size
end
string = "Конечно, можно представить себе, каким воспитателем и отцом мог быть такой человек. С ним как с отцом именно случилось то , что должно было случиться, то есть он вовсе и совершенно бросил своего ребенка, прижитого с Аделаидой Ивановной, не по злобе к нему или не из каких-нибудь оскорбленно-супружеских чувств, а просто потому, что забыл о нем совершенно."
three_words(string)