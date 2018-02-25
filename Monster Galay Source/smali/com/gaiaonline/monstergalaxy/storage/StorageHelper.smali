.class public interface abstract Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "monsterGalaxy.db"

.field public static final DATABASE_VERSION:I = 0x16

.field public static final QUERY_ALL_BATTLE_AUDIO:Ljava/lang/String; = "SELECT audio_type, audio_asset FROM battle_audio"

.field public static final QUERY_ALL_ISLANDS:Ljava/lang/String; = "SELECT name, stars, asset, moga_count, quest_ids, max_level, position_x, position_y, island_id, ambience_audio, sting_audio FROM islands"

.field public static final QUERY_ALL_LEVEL_DIFF_MULTIPLIERS:Ljava/lang/String; = "SELECT level_diff, multiplier FROM level_diff_multipliers"

.field public static final QUERY_ALL_NOTIFICATIONS:Ljava/lang/String; = "SELECT type, island_id, notification_id FROM notifications"

.field public static final QUERY_ALL_QUESTS:Ljava/lang/String; = "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests"

.field public static final QUERY_ALL_SHOP_PRODUCTS:Ljava/lang/String; = "SELECT type, quantity, description, title, price, id FROM shop_products ORDER BY type, price"

.field public static final QUERY_ATTACK_MOVE_BY_ID:Ljava/lang/String; = "SELECT name, type, power, modifier_p, modifier_q, max_damage, level_multiplier, charge_animation, charge_effect, animation, hit_visual, attack_sound, hit_sound FROM moves WHERE move_id = ?"

.field public static final QUERY_CONSTANT_BY_NAME:Ljava/lang/String; = "SELECT value FROM constants WHERE name = ?"

.field public static final QUERY_ENCOUNTERS_BY_NODE:Ljava/lang/String; = "SELECT encounter_id, quest_id, category, capture, music_asset, music_type FROM encounters WHERE node_id = ?"

.field public static final QUERY_ENCOUNTER_APPEARANCES:Ljava/lang/String; = "SELECT encounter_id, moga_type_id, level, n, probability FROM encounter_appearances WHERE encounter_id = ?"

.field public static final QUERY_ISLAND_BY_ID:Ljava/lang/String; = "SELECT name, stars, asset, moga_count, quest_ids, max_level, position_x, position_y, island_id, ambience_audio, sting_audio FROM islands WHERE island_id = ? "

.field public static final QUERY_MOGA_CAPTURE_ISLAND:Ljava/lang/String; = "SELECT n.island_id FROM encounter_appearances ea, encounters e, nodes n WHERE ea.moga_type_id = ? AND ea.encounter_id = e.encounter_id AND e.node_id = n.node_id AND e.capture = \'enabled\' ORDER BY island_id LIMIT 0,1"

.field public static final QUERY_MOGA_TYPES_BY_SUB_TYPE:Ljava/lang/String; = "SELECT monster_id, name, description, rarity, offense, defense, zodiac_sign, zodiac, max_health, portrait_asset, full_body_asset, physical_attack_id, zodiac_attack_id, island_id, sub_type, purchaseable FROM monsters WHERE sub_type = ?"

.field public static final QUERY_MOGA_TYPES_COUNT:Ljava/lang/String; = "SELECT COUNT(1) FROM monsters WHERE sub_type = ?"

.field public static final QUERY_MOGA_TYPE_BY_ID:Ljava/lang/String; = "SELECT monster_id, name, description, rarity, offense, defense, zodiac_sign, zodiac, max_health, portrait_asset, full_body_asset, physical_attack_id, zodiac_attack_id, island_id, sub_type, purchaseable FROM monsters WHERE monster_id = ?"

.field public static final QUERY_NODES_BY_ISLAND_ID:Ljava/lang/String; = "SELECT node_id, name, description, adjacent_nodes, energy_cost, thumbnail, background, drop_id, drop_probability, position_x, position_y FROM nodes WHERE island_id = ? "

.field public static final QUERY_NODE_BY_ID:Ljava/lang/String; = "SELECT node_id, name, description, adjacent_nodes, energy_cost, thumbnail, background, drop_id, drop_probability, position_x, position_y, island_id FROM nodes WHERE node_id = ?"

.field public static final QUERY_QUEST_BY_BEAT_NODE_ID:Ljava/lang/String; = "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests WHERE beat_node_id = ?"

.field public static final QUERY_QUEST_BY_GRANT_NODE_ID:Ljava/lang/String; = "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests WHERE grant_node_id = ?"

.field public static final QUERY_QUEST_BY_GRANT_QUEST_ID:Ljava/lang/String; = "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests WHERE grant_quest_id = ?"

.field public static final QUERY_QUEST_BY_ID:Ljava/lang/String; = "SELECT quest_id, name, type, npc_name, npc_asset, receive_dialog, description_dialog, complete_dialog, beat_node_id, monster_id, monster_count, reward_item_id, reward_item_count, grant_node_id, grant_quest_id, restriction_node_ids, restriction_quest_id, island_id_to_win_stars, stars_to_win_in_island, locked_node_id, music FROM quests WHERE quest_id = ?"

.field public static final QUERY_REELS:Ljava/lang/String; = "SELECT name, probability FROM reels"

.field public static final QUERY_REEL_PRIZES:Ljava/lang/String; = "SELECT prize_id, displayName, bluecoffees, mogaType, mogacash, name, starseeds, type FROM reel_prizes WHERE type = ?"

.field public static final QUERY_SLOT_MACHINE:Ljava/lang/String; = "SELECT cooldown_seconds, cost FROM slot_machine"

.field public static final QUERY_TEXTS_BY_NOTIFICATION_ID:Ljava/lang/String; = "SELECT notification_id, title, message, button_text, text_id FROM notification_texts WHERE notification_id = ? ORDER BY text_id"


# virtual methods
.method public abstract getAllIslands()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Island;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttackMove(I)Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
.end method

.method public abstract getBattleAudio()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getConstantValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEncounters(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Encounter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsland(I)Lcom/gaiaonline/monstergalaxy/model/map/Island;
.end method

.method public abstract getIslandNodes(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/model/map/Island;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLevelDiffMultipliers()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMogaCaptureIsland(I)I
.end method

.method public abstract getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
.end method

.method public abstract getMogaTypeCount(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)I
.end method

.method public abstract getMogaTypesBySubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNode(I)Lcom/gaiaonline/monstergalaxy/model/map/Node;
.end method

.method public abstract getNotifications()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProducts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/shop/Product;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQuest(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
.end method

.method public abstract getQuestByBeatNodeId(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
.end method

.method public abstract getQuestByGrantNodeId(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
.end method

.method public abstract getQuestByGrantQuestId(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/Quest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSlotMachine()Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;
.end method

.method public abstract getZodiacSignMultiplier(Ljava/lang/String;Ljava/lang/String;)F
.end method
