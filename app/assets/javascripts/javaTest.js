$(document).ready(function(){
    
    const getStats = function(){
        const stats = {}
        stats.hp = [parseInt($("#hp").html()),parseInt($("#ivHp").val()), parseInt($("#evHp").val()) ]
        stats.att = [parseInt($("#att").html()),parseInt($("#ivAtt").val()), parseInt($("#evAtt").val()) ]
        stats.def = [parseInt($("#def").html()),parseInt($("#ivDef").val()), parseInt($("#evDef").val()) ]
        stats.spatk = [parseInt($("#spatk").html()),parseInt($("#ivSpatk").val()), parseInt($("#evSpatk").val()) ]
        stats.spdef = [parseInt($("#spdef").html()),parseInt($("#ivSpdef").val()), parseInt($("#evSpdef").val()) ]
        stats.spe = [parseInt($("#spe").html()),parseInt($("#ivSpe").val()), parseInt($("#evSpe").val()) ]
        outputStats(stats)
    }

    const updateCount = function(){
        let count =  $(':checked').length-3;
        $("#check-count").html(count)
        $("#check-count").removeClass("red")
        if (count>4){
            $("#check-count").addClass("red")
        }
    }

    const updatePokemonCount = function(){
        let count =  $(':checked').length;
        $("#pokemon-count").html(count)
        $("#pokemon-count").removeClass("red")
        if (count>6){
            $("#pokemon-count").addClass("red")
        }
    }
    
    const calcHp = function(stat){
        return (Math.floor(0.01 * (2 * stat[0] + stat[1] + Math.floor(0.25 * stat[2])) * 50) + 50 + 10);
    };

    const calcStat = function(stat){
        nature = 1
        return((Math.floor(0.01 * (2 * stat[0] + stat[1] + Math.floor(0.25 * stat[2])) * 50) + 5) * nature )
    };

    const outputStats = function(stats){
            const hp = calcHp(stats.hp);
            const att = calcStat(stats.att);
            const def = calcStat(stats.def);
            const spatk = calcStat(stats.spatk);
            const spdef = calcStat(stats.spdef);
            const spe = calcStat(stats.spe);
            $("#totalHp").html(hp);
            $("#totalAtt").html(att);
            $("#totalDef").html(def);
            $("#totalSpatk").html(spatk);
            $("#totalSpdef").html(spdef);
            $("#totalSpe").html(spe);
    };
    // live text update listener
    $(".stat").each(function(i,stat){
            $(stat).on("change", function(){
                getStats()
            });
    });
    // attack/pokemon count event listener
    $("[type='checkbox']").on('click', function(){
        updateCount()
        updatePokemonCount();
    });
    // initialising current stats on page launch
    getStats();
    updateCount();
    updatePokemonCount();
});
