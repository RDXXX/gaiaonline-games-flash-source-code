.class public Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# static fields
.field private static final LEFT_TO_RIGHT:I = 0x1

.field private static final RIGHT_TO_LEFT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AnimationManager"

.field private static instance:Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;


# instance fields
.field private mirroredAnimations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field private normalAnimations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->normalAnimations:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->mirroredAnimations:Ljava/util/Map;

    .line 68
    return-void
.end method

.method private static getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 22
    .param p0, "node"    # Lorg/codehaus/jackson/JsonNode;
    .param p1, "dir"    # I

    .prologue
    .line 104
    const-string v17, "action-name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v15

    .line 105
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 106
    .local v16, "result":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v11

    .line 107
    .local v11, "arx":F
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v12

    .line 109
    .local v12, "ary":F
    const-string v17, "CCRepeatForever"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 110
    const-string v17, "action"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v16

    .line 245
    :goto_0
    return-object v16

    .line 112
    :cond_0
    const-string v17, "CCRepeat"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 113
    const-string v17, "action"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v17

    .line 114
    const-string v18, "times"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v18

    .line 113
    invoke-static/range {v17 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;I)Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;

    move-result-object v16

    goto :goto_0

    .line 116
    :cond_1
    const-string v17, "CCSequence"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "CCSpawn"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 117
    :cond_2
    const-string v17, "actions"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    .line 118
    .local v10, "actionsNode":Lorg/codehaus/jackson/JsonNode;
    new-instance v9, Ljava/util/ArrayList;

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v9, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    const/4 v6, 0x0

    .line 120
    .local v6, "actionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_4

    .line 152
    const-string v17, "CCSequence"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 153
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v16

    goto/16 :goto_0

    .line 120
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/JsonNode;

    .line 121
    .local v7, "actionNode":Lorg/codehaus/jackson/JsonNode;
    const-string v17, "CCDelayTime"

    const-string v19, "action-name"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 126
    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v20, "duration"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v20

    .line 127
    invoke-virtual/range {v20 .. v20}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->floatValue()F

    move-result v20

    .line 126
    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_5
    :goto_2
    const-string v17, "action-id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 145
    if-nez v6, :cond_6

    .line 146
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "actionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 148
    .restart local v6    # "actionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    :cond_6
    const-string v17, "action-id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v14

    .line 149
    .local v14, "id":Ljava/lang/String;
    invoke-interface {v6, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 129
    .end local v14    # "id":Ljava/lang/String;
    :cond_7
    const-string v17, "CCReverse"

    const-string v19, "action-name"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 130
    const-string v17, "action-to-reverse-id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "actionToReverseId":Ljava/lang/String;
    if-eqz v6, :cond_8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_9

    .line 132
    :cond_8
    sget-object v17, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v18, "AnimationManager"

    const-string v19, "Tried to reverse an undefined action"

    invoke-interface/range {v17 .. v19}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Move id not found: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_9
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/codehaus/jackson/JsonNode;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getReversedAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 138
    .end local v8    # "actionToReverseId":Ljava/lang/String;
    :cond_a
    move/from16 v0, p1

    invoke-static {v7, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v5

    .line 139
    .local v5, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    if-eqz v5, :cond_5

    .line 140
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 156
    .end local v5    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v7    # "actionNode":Lorg/codehaus/jackson/JsonNode;
    :cond_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v16

    goto/16 :goto_0

    .line 159
    .end local v6    # "actionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v9    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    .end local v10    # "actionsNode":Lorg/codehaus/jackson/JsonNode;
    :cond_c
    const-string v17, "CCMoveBy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 161
    const-string v17, "position-x"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    mul-float v17, v17, v11

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    .line 162
    const-string v18, "position-y"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    mul-float v18, v18, v12

    .line 163
    const-string v19, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    move-result v19

    .line 160
    invoke-static/range {v17 .. v19}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;

    move-result-object v16

    goto/16 :goto_0

    .line 165
    :cond_d
    const-string v17, "CCRotateBy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 167
    const-string v17, "angle"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    .line 168
    const-string v18, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    .line 166
    invoke-static/range {v17 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;

    move-result-object v16

    goto/16 :goto_0

    .line 170
    :cond_e
    const-string v17, "CCJumpBy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 172
    const-string v17, "position-x"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    mul-float v17, v17, v11

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    .line 173
    const-string v18, "position-y"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    mul-float v18, v18, v12

    .line 174
    const-string v19, "height"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    move-result v19

    mul-float v19, v19, v12

    .line 175
    const-string v20, "jumps"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v20

    .line 176
    const-string v21, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->floatValue()F

    move-result v21

    .line 171
    invoke-static/range {v17 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->$(FFFIF)Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;

    move-result-object v16

    goto/16 :goto_0

    .line 178
    :cond_f
    const-string v17, "CCOrbitCamera"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 180
    const-string v17, "deltaAngleZ"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v17

    const/16 v18, 0xb4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v17, 0x1

    .line 181
    :goto_3
    const-string v18, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    .line 179
    invoke-static/range {v17 .. v18}, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->$(ZF)Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;

    move-result-object v16

    goto/16 :goto_0

    .line 180
    :cond_10
    const/16 v17, 0x0

    goto :goto_3

    .line 183
    :cond_11
    const-string v17, "CCFadeTo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 185
    const-string v17, "opacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 186
    const-string v18, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    .line 184
    invoke-static/range {v17 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    move-result-object v16

    goto/16 :goto_0

    .line 188
    :cond_12
    const-string v17, "CCFadeOut"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 190
    const-string v17, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 189
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v16

    goto/16 :goto_0

    .line 192
    :cond_13
    const-string v17, "CCFadeIn"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 194
    const-string v17, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 193
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v16

    goto/16 :goto_0

    .line 196
    :cond_14
    const-string v17, "CCTintTo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 198
    const-string v17, "red"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 199
    const-string v18, "green"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    .line 200
    const-string v19, "blue"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    move-result v19

    .line 201
    const-string v20, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->floatValue()F

    move-result v20

    .line 197
    invoke-static/range {v17 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFF)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v16

    goto/16 :goto_0

    .line 203
    :cond_15
    const-string v17, "CCScaleTo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 205
    const-string v17, "sx"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 206
    const-string v18, "sy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    .line 207
    const-string v19, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    move-result v19

    .line 204
    invoke-static/range {v17 .. v19}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v16

    goto/16 :goto_0

    .line 209
    :cond_16
    const-string v17, "CCShaky3D"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 211
    const-string v17, "grid-size-x"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v18

    .line 212
    const-string v17, "grid-size-y"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v19

    .line 213
    const-string v17, "range"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v20

    .line 214
    const-string v17, "shakeZ"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v17

    if-nez v17, :cond_17

    const/16 v17, 0x0

    .line 215
    :goto_4
    const-string v21, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->floatValue()F

    move-result v21

    .line 210
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->$(IIIZF)Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;

    move-result-object v16

    goto/16 :goto_0

    .line 214
    :cond_17
    const/16 v17, 0x1

    goto :goto_4

    .line 217
    :cond_18
    const-string v17, "CCEaseExponentialIn"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 218
    const-string v17, "action-to-ease"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v16

    move-object/from16 v17, v16

    .line 219
    check-cast v17, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 220
    new-instance v18, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;

    invoke-direct/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;-><init>()V

    invoke-virtual/range {v17 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    goto/16 :goto_0

    .line 222
    :cond_19
    const-string v17, "CCEaseExponentialOut"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 223
    const-string v17, "action-to-ease"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v16

    move-object/from16 v17, v16

    .line 224
    check-cast v17, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 225
    new-instance v18, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;

    invoke-direct/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;-><init>()V

    invoke-virtual/range {v17 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    goto/16 :goto_0

    .line 227
    :cond_1a
    const-string v17, "CCEaseElasticIn"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 228
    const-string v17, "period"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    .line 229
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 228
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;

    move-result-object v13

    .line 230
    .local v13, "i":Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    const-string v17, "action-to-ease"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v16

    move-object/from16 v17, v16

    .line 231
    check-cast v17, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    goto/16 :goto_0

    .line 233
    .end local v13    # "i":Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    :cond_1b
    const-string v17, "CCEaseElasticOut"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 234
    const-string v17, "period"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    .line 235
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 234
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;

    move-result-object v13

    .line 236
    .restart local v13    # "i":Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    const-string v17, "action-to-ease"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v16

    move-object/from16 v17, v16

    .line 237
    check-cast v17, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    goto/16 :goto_0

    .line 239
    .end local v13    # "i":Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    :cond_1c
    const-string v17, "CCCallFunc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, "CCCallFuncO"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 240
    :cond_1d
    const-string v17, "selector"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->newInstance(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;

    move-result-object v16

    goto/16 :goto_0

    .line 243
    :cond_1e
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Move not supported: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method public static getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->instance:Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AnimationManager not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->instance:Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    return-object v0
.end method

.method private static getReversedAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 7
    .param p0, "node"    # Lorg/codehaus/jackson/JsonNode;
    .param p1, "dir"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    .line 249
    const-string v4, "action-name"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 251
    .local v3, "result":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v0

    .line 252
    .local v0, "arx":F
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v1

    .line 253
    .local v1, "ary":F
    const-string v4, "CCMoveBy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const-string v4, "position-x"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    mul-float/2addr v4, v0

    int-to-float v5, p1

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    .line 256
    const-string v5, "position-y"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    mul-float/2addr v5, v1

    mul-float/2addr v5, v6

    .line 257
    const-string v6, "duration"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 254
    invoke-static {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;

    move-result-object v3

    .line 264
    :cond_0
    :goto_0
    return-object v3

    .line 259
    :cond_1
    const-string v4, "CCRotateBy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const-string v4, "angle"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    int-to-float v5, p1

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    .line 262
    const-string v5, "duration"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 260
    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;

    move-result-object v3

    goto :goto_0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->instance:Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    .line 49
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->instance:Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->loadAnimations()V

    .line 50
    return-void
.end method

.method private loadAnimations()V
    .locals 11

    .prologue
    .line 74
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v8, "animations.json"

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 75
    .local v1, "handle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v2, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 76
    .local v2, "m":Lorg/codehaus/jackson/map/ObjectMapper;
    const/4 v6, 0x0

    .line 78
    .local v6, "rootNode":Lorg/codehaus/jackson/JsonNode;
    :try_start_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v7

    const-class v8, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v7, v8}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    check-cast v6, Lorg/codehaus/jackson/JsonNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .restart local v6    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->getFields()Ljava/util/Iterator;

    move-result-object v5

    .line 87
    .local v5, "moves":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 101
    return-void

    .line 79
    .end local v5    # "moves":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;>;"
    .end local v6    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Could not open animations file"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "moves":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;>;"
    .restart local v6    # "rootNode":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    .local v3, "move":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 91
    .local v4, "moveName":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->normalAnimations:Ljava/util/Map;

    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/JsonNode;

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v7

    .line 91
    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->mirroredAnimations:Ljava/util/Map;

    .line 94
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/JsonNode;

    const/4 v9, -0x1

    invoke-static {v7, v9}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAction(Lorg/codehaus/jackson/JsonNode;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v7

    .line 93
    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "AnimationManager"

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Animation "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mirrored"    # Z

    .prologue
    .line 60
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->mirroredAnimations:Ljava/util/Map;

    .line 62
    .local v0, "animations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "animations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->normalAnimations:Ljava/util/Map;

    goto :goto_0
.end method
