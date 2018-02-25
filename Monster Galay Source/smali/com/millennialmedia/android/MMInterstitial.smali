.class Lcom/millennialmedia/android/MMInterstitial;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMInterstitial.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public close(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/millennialmedia/android/MMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 52
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 54
    check-cast v0, Landroid/app/Activity;

    .line 55
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 56
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 58
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public expandWithProperties(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v25, "OVERLAY_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 91
    .local v8, "isBanner":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 92
    const-string v25, "Cannot expand a non banner ad"

    invoke-static/range {v25 .. v25}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v25

    .line 201
    :goto_0
    return-object v25

    .line 94
    :cond_0
    const-string v25, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 95
    .local v23, "url":Ljava/lang/String;
    const-string v25, "transparent"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 96
    .local v22, "transparent":Ljava/lang/String;
    const-string v25, "showTitlebar"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 97
    .local v12, "showTitlebar":Ljava/lang/String;
    const-string v25, "showBottombar"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 98
    .local v11, "showBottombar":Ljava/lang/String;
    const-string v25, "enableBottombar"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    .local v5, "enableBottombar":Ljava/lang/String;
    const-string v25, "enableNativeAccelerometer"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 100
    .local v6, "enableNativeAccelerometer":Ljava/lang/String;
    const-string v25, "useCustomClose"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 101
    .local v24, "useCustomClose":Ljava/lang/String;
    const-string v25, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 102
    .local v19, "title":Ljava/lang/String;
    const-string v25, "transition"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 103
    .local v20, "transition":Ljava/lang/String;
    const-string v25, "orientation"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 104
    .local v9, "orientation":Ljava/lang/String;
    const-string v25, "transitionDuration"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 105
    .local v21, "transitionDuration":Ljava/lang/String;
    const-string v25, "delayEnableBottombar"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "delayEnableBottombar":Ljava/lang/String;
    const-string v25, "delayShowBottombar"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 107
    .local v4, "delayShowBottombar":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 108
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_10

    .line 110
    new-instance v7, Landroid/content/Intent;

    const-class v25, Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v0, v25

    invoke-direct {v7, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v7, "intent":Landroid/content/Intent;
    const-string v25, "class"

    const-string v26, "com.millennialmedia.android.AdViewOverlayActivity"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    if-nez v23, :cond_1

    .line 114
    const-string v25, "OVERLAY_adurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "url":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 115
    .restart local v23    # "url":Ljava/lang/String;
    if-nez v23, :cond_1

    .line 116
    const-string v25, "No url"

    invoke-static/range {v25 .. v25}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v25

    goto/16 :goto_0

    .line 118
    :cond_1
    instance-of v0, v2, Lcom/millennialmedia/android/MMActivity;

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 119
    const/high16 v25, 0x24000000

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    :cond_2
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    new-instance v10, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v10}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    .line 122
    .local v10, "settings":Lcom/millennialmedia/android/OverlaySettings;
    if-eqz v22, :cond_3

    .line 124
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    iput-boolean v0, v10, Lcom/millennialmedia/android/OverlaySettings;->shouldMakeOverlayTransparent:Z

    .line 126
    :cond_3
    if-eqz v12, :cond_4

    .line 128
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    iput-boolean v0, v10, Lcom/millennialmedia/android/OverlaySettings;->shouldShowTitlebar:Z

    .line 130
    :cond_4
    if-eqz v11, :cond_5

    .line 132
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    iput-boolean v0, v10, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    .line 134
    :cond_5
    if-eqz v5, :cond_6

    .line 136
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    iput-boolean v0, v10, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    .line 138
    :cond_6
    if-eqz v6, :cond_7

    .line 140
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    iput-boolean v0, v10, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    .line 142
    :cond_7
    if-eqz v24, :cond_8

    .line 144
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    iput-boolean v0, v10, Lcom/millennialmedia/android/OverlaySettings;->shouldShowCustomClose:Z

    .line 146
    :cond_8
    if-eqz v19, :cond_9

    .line 148
    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/millennialmedia/android/OverlaySettings;->overlayTitle:Ljava/lang/String;

    .line 150
    :cond_9
    if-eqz v20, :cond_a

    .line 152
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    .line 154
    :cond_a
    if-eqz v9, :cond_b

    .line 156
    iput-object v9, v10, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 158
    :cond_b
    if-eqz v3, :cond_c

    .line 162
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 163
    .local v13, "tempDelayEnable":J
    iput-wide v13, v10, Lcom/millennialmedia/android/OverlaySettings;->delayEnableBottombar:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 169
    .end local v13    # "tempDelayEnable":J
    :cond_c
    :goto_1
    if-eqz v4, :cond_d

    .line 173
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 174
    .local v15, "tempDelayShow":J
    iput-wide v15, v10, Lcom/millennialmedia/android/OverlaySettings;->delayShowBottombar:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .end local v15    # "tempDelayShow":J
    :cond_d
    :goto_2
    if-eqz v21, :cond_e

    .line 184
    :try_start_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 185
    .local v17, "tempDuration":J
    move-wide/from16 v0, v17

    iput-wide v0, v10, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 191
    .end local v17    # "tempDuration":J
    :cond_e
    :goto_3
    const-string v25, "settings"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    const/high16 v25, 0x24000000

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    instance-of v0, v2, Landroid/app/Activity;

    move/from16 v25, v0

    if-nez v25, :cond_f

    .line 195
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    :cond_f
    invoke-virtual {v2, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->overlayOpened(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 199
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v25

    goto/16 :goto_0

    .line 201
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 187
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    :catch_0
    move-exception v25

    goto :goto_3

    .line 176
    :catch_1
    move-exception v25

    goto :goto_2

    .line 165
    :catch_2
    move-exception v25

    goto :goto_1
.end method

.method public open(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 67
    const-string v4, "url"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/millennialmedia/android/MMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 69
    .local v0, "context":Landroid/content/Context;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 75
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    :cond_0
    const-string v4, "browser"

    invoke-static {v0, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 81
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-object v3
.end method

.method public show(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/millennialmedia/android/MMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 27
    .local v0, "context":Landroid/content/Context;
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "class"

    const-string v4, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    instance-of v3, v0, Lcom/millennialmedia/android/MMActivity;

    if-nez v3, :cond_0

    .line 33
    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    :cond_0
    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 36
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
