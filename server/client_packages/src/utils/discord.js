setInterval(function () {
    var name = (localplayer.getVariable('REMOTE_ID') == undefined) ? `Не авторизован` : `Игрок №${localplayer.getVariable("REMOTE_ID")}`;
	mp.discord.update('Blunt RP', name);
}, 10000);