//  elPato
// ��������� � ����� ����� 
//���� VK_F3 �� �������� �� �������� �� ��� 0x72


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
    mp.events.call('notify', 2, 9, "��������� ��� ������������", 3000);
});