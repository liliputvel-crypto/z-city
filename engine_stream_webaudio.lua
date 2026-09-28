local WebAudio = WebAudio or {}

if not WebAudio.CreateStream then
    function WebAudio.CreateStream(path, callback)
        sound.PlayFile("sound/" .. path, "noplay noblock", function(channel, errorCode, errorName)
            if callback then
                callback(channel, errorCode, errorName)
            end
        end)
    end
end

if not WebAudio.IsValid then
    function WebAudio.IsValid(channel)
        return IsValid(channel)
    end
end

if not WebAudio.Stop then
    function WebAudio.Stop(channel)
        if IsValid(channel) then
            channel:Stop()
        end
    end
end

if not WebAudio.SetVolume then
    function WebAudio.SetVolume(channel, volume)
        if IsValid(channel) then
            channel:SetVolume(volume)
        end
    end
end

if not WebAudio.SetPlaybackRate then
    function WebAudio.SetPlaybackRate(channel, rate)
        if IsValid(channel) then
            channel:SetPlaybackRate(rate)
        end
    end
end

if not WebAudio.SetPan then
    function WebAudio.SetPan(channel, pan)
        if IsValid(channel) then
            channel:SetPan(pan)
        end
    end
end

if not WebAudio.Play then
    function WebAudio.Play(channel)
        if IsValid(channel) then
            channel:Play()
        end
    end
end

if not WebAudio.Pause then
    function WebAudio.Pause(channel)
        if IsValid(channel) then
            channel:Pause()
        end
    end
end

if not WebAudio.GetState then
    function WebAudio.GetState(channel)
        if IsValid(channel) then
            return channel:GetState()
        end
        return 0
    end
end

if not WebAudio.EnableLooping then
    function WebAudio.EnableLooping(channel, enabled)
        if IsValid(channel) then
            channel:EnableLooping(enabled)
        end
    end
end

_G.WebAudio = WebAudio