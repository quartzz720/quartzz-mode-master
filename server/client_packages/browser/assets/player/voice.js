// Äîáàâëÿåì â ëþáîå ìåñòî
//Åñëè VK_F3 íå ðàáîòàåò òî çàìåíÿåì íà ýòî 0x72



mp.keys.bind(global.Keys.VK_F3, false, function () {
    try {
        mp.voiceChat.cleanupAndReload(false, false, true);
    } catch { }

    try {
        mp.voiceChat.cleanupAndReload(true, true, true);
    } catch { }
    try {
        mp.voiceChat.cleanupAndReload(true, false, false);
    } catch { }
    mp.events.call('notify', 2, 9, "Голосовой чат перезагружен", 3000);
});