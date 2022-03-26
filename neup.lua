require 'io'
require 'os'
local function rf(): string
    local content
    local fil
    fil = io.open("/home/alx/.scripts/upstate.txt","r")
    io.input(fil)
    content = io.read()
    io.close(fil)
    return content
end

local function wf(write:string): integer
    local file
    file = io.open("/home/alx/.scripts/upstate.txt","w")
    io.output(file)
    io.write(write)
    io.close(file)
    return 0
end

local function main(): integer
    local contents
    local x
    contents = rf()
    x = os.date("%d")
    if x == "20" or x == "10" or x == "29" then
        if contents=="1" then
            os.execute("alacritty -e sudo timeshift --create --btrfs && alacritty -e paru")
            wf("0")
        end
    else
        wf("1")
    end
    return 0
end
main()
