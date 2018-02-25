.class public Lcom/kontagent/InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kontagent/InstallReceiver$1;,
        Lcom/kontagent/InstallReceiver$ReferrerEventType;
    }
.end annotation


# static fields
.field protected static final ACTION_INSTALL_REFERRER:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"

.field protected static final DEFAULT_SUBTYPE1_KEY:Ljava/lang/String; = "st1"

.field protected static final DEFAULT_SUBTYPE2_KEY:Ljava/lang/String; = "st2"

.field protected static final DEFAULT_SUBTYPE3_KEY:Ljava/lang/String; = "st3"

.field protected static final DEFAULT_TYPE_KEY:Ljava/lang/String; = "tu"

.field protected static final EVENT_TYPE_AD:Ljava/lang/String; = "ad"

.field protected static final EVENT_TYPE_PARTNER:Ljava/lang/String; = "partner"

.field protected static final EXTRA_REFERRER:Ljava/lang/String; = "referrer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static parseReferrerArguments(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "referrerArgs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 27
    if-nez p0, :cond_1

    .line 28
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 48
    :cond_0
    :goto_0
    return-object v8

    .line 31
    :cond_1
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "decoded":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 33
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 36
    :cond_2
    const-string v10, "&"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "args":[Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v8, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, v2, v4

    .line 40
    .local v0, "arg":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 41
    .local v7, "parts":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v5, v7, v10

    .line 42
    .local v5, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 43
    .local v9, "value":Ljava/lang/String;
    array-length v10, v7

    if-le v10, v11, :cond_3

    .line 44
    aget-object v9, v7, v11

    .line 46
    :cond_3
    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected dump(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v0, Lcom/kontagent/KontagentPrefs;

    invoke-direct {v0, p1}, Lcom/kontagent/KontagentPrefs;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "prefs":Lcom/kontagent/KontagentPrefs;
    invoke-virtual {v0}, Lcom/kontagent/KontagentPrefs;->getReferrerEventType()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/kontagent/KontagentPrefs;->getReferrerEventSubtype1()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "st1":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/kontagent/KontagentPrefs;->getReferrerEventSubtype2()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "st2":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/kontagent/KontagentPrefs;->getReferrerEventSubtype3()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "st3":Ljava/lang/String;
    const-string v5, "Kontagent referrer arguments: "

    invoke-static {v5}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ttu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tst1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tst2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tst2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string v4, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const-string v4, "referrer"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "referrer":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installation detected. Referrer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kontagent/KontagentLog;->i(Ljava/lang/String;)I

    .line 83
    invoke-static {v2}, Lcom/kontagent/InstallReceiver;->parseReferrerArguments(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 84
    .local v3, "referrerArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kontagent/KontagentLog;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/kontagent/InstallReceiver;->onReferralEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/kontagent/InstallReceiver;->dump(Landroid/content/Context;)V

    .line 91
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "referrer":Ljava/lang/String;
    .end local v3    # "referrerArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onReferralEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p3, "eventArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "tu"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "tu"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, "type":Ljava/lang/String;
    const-string v2, "ad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "partner"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    :cond_0
    new-instance v0, Lcom/kontagent/KontagentPrefs;

    invoke-direct {v0, p1}, Lcom/kontagent/KontagentPrefs;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "prefs":Lcom/kontagent/KontagentPrefs;
    invoke-virtual {v0, v1}, Lcom/kontagent/KontagentPrefs;->setReferrerEventType(Ljava/lang/String;)V

    .line 103
    .end local v0    # "prefs":Lcom/kontagent/KontagentPrefs;
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    const-string v2, "st1"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    const-string v2, "st1"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/kontagent/InstallReceiver;->setReferrerEventSubtype1(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :cond_2
    const-string v2, "st2"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    const-string v2, "st2"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/kontagent/InstallReceiver;->setReferrerEventSubtype2(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_3
    const-string v2, "st3"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    const-string v2, "st3"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/kontagent/InstallReceiver;->setReferrerEventSubtype3(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    :cond_4
    return-void
.end method

.method public setReferrerEventSubtype1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/kontagent/KontagentPrefs;

    invoke-direct {v0, p1}, Lcom/kontagent/KontagentPrefs;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "prefs":Lcom/kontagent/KontagentPrefs;
    invoke-virtual {v0, p2}, Lcom/kontagent/KontagentPrefs;->setReferrerEventSubtype1(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setReferrerEventSubtype2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/kontagent/KontagentPrefs;

    invoke-direct {v0, p1}, Lcom/kontagent/KontagentPrefs;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "prefs":Lcom/kontagent/KontagentPrefs;
    invoke-virtual {v0, p2}, Lcom/kontagent/KontagentPrefs;->setReferrerEventSubtype2(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setReferrerEventSubtype3(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/kontagent/KontagentPrefs;

    invoke-direct {v0, p1}, Lcom/kontagent/KontagentPrefs;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "prefs":Lcom/kontagent/KontagentPrefs;
    invoke-virtual {v0, p2}, Lcom/kontagent/KontagentPrefs;->setReferrerEventSubtype3(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setReferrerEventType(Landroid/content/Context;Lcom/kontagent/InstallReceiver$ReferrerEventType;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventType"    # Lcom/kontagent/InstallReceiver$ReferrerEventType;

    .prologue
    .line 67
    new-instance v0, Lcom/kontagent/KontagentPrefs;

    invoke-direct {v0, p1}, Lcom/kontagent/KontagentPrefs;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "prefs":Lcom/kontagent/KontagentPrefs;
    sget-object v1, Lcom/kontagent/InstallReceiver$1;->$SwitchMap$com$kontagent$InstallReceiver$ReferrerEventType:[I

    invoke-virtual {p2}, Lcom/kontagent/InstallReceiver$ReferrerEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 70
    :pswitch_0
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lcom/kontagent/KontagentPrefs;->setReferrerEventType(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v1, "partner"

    invoke-virtual {v0, v1}, Lcom/kontagent/KontagentPrefs;->setReferrerEventType(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
