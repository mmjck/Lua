function concat(str)
    s = str or "Hello"
    print(s .. ", World")
end


concat()
concat("Other str")