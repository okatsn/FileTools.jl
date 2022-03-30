
function serial_number_4d(n)
    @sprintf "_%.4d" n
end


function pathnorepeat(filepath; suffix_fun = serial_number_4d)
    i = 1
    pathv0 = [splitext(filepath)...]
    while isfile(filepath) || isdir(filepath)
        pathv = copy(pathv0)
        insert!(pathv, 2, suffix_fun(i))
        i = i +1
        filepath = join(pathv, "")
    end
    return filepath
end

