#!/usr/bin/luajit
function rf()
    file = io.open("/home/alx/.scripts/upstate.txt","r")
    io.input(file)
    contents = io.read()
    io.close(file)
    return contents
end

function wf(write)
    file = io.open("/home/alx/.scripts/upstate.txt","w")
    io.output(file)
    io.write(write)
    io.close(file)
end

function main()
    contents = rf()
    x = tonumber(os.date("%d"))
    if x == 20 or x == 10 or x == 29 then
        if contents=="1" then
            os.execute("alacritty -e ~/.scripts/execution")
            wf("0")
        end
    else
        wf("1")
    end
end
main()
