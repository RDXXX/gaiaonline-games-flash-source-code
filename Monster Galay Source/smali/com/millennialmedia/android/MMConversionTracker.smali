.class public final Lcom/millennialmedia/android/MMConversionTracker;
.super Landroid/content/BroadcastReceiver;
.source "MMConversionTracker.java"


# static fields
.field private static final ACTION_REFERRER:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"

.field private static final EXTRA_REFERRER:Ljava/lang/String; = "referrer"

.field private static final KEY_REFERRER:Ljava/lang/String; = "installReferrer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized trackConversion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "goalId"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v23, Lcom/millennialmedia/android/MMConversionTracker;

    monitor-enter v23

    const-wide/16 v16, 0x0

    .line 62
    .local v16, "installTime":J
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit v23

    return-void

    .line 65
    :cond_1
    :try_start_1
    const-string v3, "MillennialMediaSettings"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 66
    .local v21, "settings":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "firstLaunch_"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 67
    .local v5, "isFirstLaunch":Z
    const-string v3, "installReferrer"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 69
    .local v20, "referrerString":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 74
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 75
    .local v8, "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "&"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "components":[Ljava/lang/String;
    move-object v9, v11

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    aget-object v19, v9, v14

    .line 78
    .local v19, "param":Ljava/lang/String;
    const-string v3, "="

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 79
    .local v22, "subComponents":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    if-lt v3, v0, :cond_2

    .line 80
    const/4 v3, 0x0

    aget-object v3, v22, v3

    const/16 v24, 0x1

    aget-object v24, v22, v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 85
    .end local v8    # "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "components":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "param":Ljava/lang/String;
    .end local v22    # "subComponents":[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 88
    .restart local v8    # "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    if-eqz v5, :cond_5

    .line 90
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 91
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "firstLaunch_"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v12, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    .line 100
    .local v15, "info":Landroid/content/pm/PackageInfo;
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v24, "firstInstallTime"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 101
    .local v13, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v13, v15}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v16

    .line 111
    .end local v13    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    :goto_2
    const-wide/16 v24, 0x0

    cmp-long v3, v16, v24

    if-lez v3, :cond_6

    .line 113
    :try_start_4
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    .line 114
    .local v10, "calendar":Ljava/util/GregorianCalendar;
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 115
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 116
    invoke-virtual {v10}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v16

    .line 119
    .end local v10    # "calendar":Ljava/util/GregorianCalendar;
    :cond_6
    move-wide/from16 v6, v16

    .line 120
    .local v6, "installTimeUTC":J
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "auid":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewSDK;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 124
    new-instance v2, Lcom/millennialmedia/android/MMConversionTracker$1;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/millennialmedia/android/MMConversionTracker$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/TreeMap;)V

    .line 139
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 57
    .end local v2    # "thread":Ljava/lang/Thread;
    .end local v4    # "auid":Ljava/lang/String;
    .end local v5    # "isFirstLaunch":Z
    .end local v6    # "installTimeUTC":J
    .end local v8    # "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "referrerString":Ljava/lang/String;
    .end local v21    # "settings":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit v23

    throw v3

    .line 143
    .restart local v4    # "auid":Ljava/lang/String;
    .restart local v5    # "isFirstLaunch":Z
    .restart local v6    # "installTimeUTC":J
    .restart local v8    # "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "referrerString":Ljava/lang/String;
    .restart local v21    # "settings":Landroid/content/SharedPreferences;
    :cond_7
    :try_start_5
    const-string v3, "No network available for conversion tracking."

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 107
    .end local v4    # "auid":Ljava/lang/String;
    .end local v6    # "installTimeUTC":J
    :catch_0
    move-exception v3

    goto :goto_2

    .line 103
    .restart local v15    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v3, "referrer"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "referrerString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v3, "Received referrer: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string v3, "MillennialMediaSettings"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 43
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "installReferrer"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
