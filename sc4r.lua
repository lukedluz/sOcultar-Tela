addEventHandler("onClientRender",getRootElement(),PlayerNameTags)


local screenWidth,screenHeight = guiGetScreenSize()
addEventHandler("onClientResourceStart", resourceRoot,
    function()
        myScreenSource = dxCreateScreenSource ( screenWidth, screenHeight )         
    end
)
	
 
function cleanmyscreen()
	if myScreenSource then
		dxUpdateScreenSource( myScreenSource )                  
		dxDrawImage( screenWidth - screenWidth,  screenHeight - screenHeight,  screenWidth, screenHeight, myScreenSource, 0, 0, 0, tocolor (255, 255, 255, 255), true)      
	end
end


function tooglecleanmyscreen ()
enabled = not enabled
                playSound("sc4r.wav")
if enabled then
	addEventHandler( "onClientRender", root, cleanmyscreen)
	else
                playSound("sc4r.wav")
	removeEventHandler( "onClientRender", root, cleanmyscreen)
end
end
bindKey ("f10", "down", tooglecleanmyscreen)