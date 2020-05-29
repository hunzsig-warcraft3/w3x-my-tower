--
local traci = 0
for i, v in ipairs(towerRaces) do
    for j=1,5 do
        local obj = slk.ability.Aamk:new("abilities_unit_race_" .. v.Name .. j)
        local Name = "种族 - [" .. hColor.green(v.Name) ..j.. "]"
        local Tip = "种族 - [" .. hColor.green(v.Name) .. "]"
        local Ubertip = hColor.green("[个体效果]|n") .. hColor.yellow(v.Text)
        Ubertip = Ubertip .. hColor.sky("|n|n[队伍效果]")
        for _,l in ipairs(v.Link) do
            local lt = j .. "/".. l.qty .. ":" .. l.text
            if(j >= l.qty)then
                Ubertip = Ubertip .. "|n" .. hColor.yellow(lt)
            else
                Ubertip = Ubertip .. "|n" .. hColor.grey(lt)
            end
        end
        Ubertip = Ubertip .. "|n|n" .. hColor.grey(v.Ubertip)
        obj.Name = Name
        obj.Tip = Tip
        obj.Ubertip = Ubertip
        obj.Buttonpos1 = 1
        obj.Buttonpos2 = 0
        obj.hero = 0
        obj.levels = 1
        obj.DataA1 = 0
        obj.DataB1 = 0
        obj.DataC1 = 0
        obj.Art = v.Art
        local ab = {
            Name = v.Name,
            INDEX = v.Name .. j,
            ABILITY_ID = obj:get_id(),
        }
        traci = traci + 1
        ?>
        call SaveStr(hash_myslk, StringHash("abilities_unit_race"), <?=traci?>, "<?=string.addslashes(json.stringify(ab))?>")
        <?
    end
end
?>
call SaveInteger(hash_myslk, StringHash("abilities_unit_race"), -1, <?=traci?>)
<?