.class public Lcom/fiksu/asotracking/InstallTracking;
.super Landroid/content/BroadcastReceiver;
.source "InstallTracking.java"


# static fields
.field private static final FIKSU_RECEIVER:Ljava/lang/String; = "com.fiksu.asotracking.InstallTracking"

.field private static final INTENT_NAME:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"

.field private static final MAX_BLOCK_MS:J = 0xbb8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method protected static checkForFiksuReceiver(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 157
    invoke-static {p0}, Lcom/fiksu/asotracking/InstallTracking;->readReceiversFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 158
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "com.fiksu.asotracking.InstallTracking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 159
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 160
    .local v1, "receiver":Ljava/lang/String;
    :goto_0
    const-string v3, "FiksuTracking"

    const-string v4, "THE FIKSU INSTALL TRACKING CODE ISN\'T INSTALLED CORRECTLY!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected receiver: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v3, Lcom/fiksu/asotracking/FiksuIntegrationError;

    const-string v4, "The Fiksu BroadcastReceiver must be installed as the only receiver for the INSTALL_REFERRER Intent in AndroidManifest.xml."

    invoke-direct {v3, v4}, Lcom/fiksu/asotracking/FiksuIntegrationError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    .end local v1    # "receiver":Ljava/lang/String;
    :cond_1
    const-string v1, "NONE"

    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 168
    const-string v3, "FiksuTracking"

    const-string v4, "THE FIKSU INSTALL TRACKING CODE ISN\'T INSTALLED CORRECTLY!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "Multiple receivers declared for: com.android.vending.INSTALL_REFERRER"

    .line 170
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "FiksuTracking"

    const-string v4, "Multiple receivers declared for: com.android.vending.INSTALL_REFERRER"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v3, Lcom/fiksu/asotracking/FiksuIntegrationError;

    const-string v4, "Multiple receivers declared for: com.android.vending.INSTALL_REFERRER"

    invoke-direct {v3, v4}, Lcom/fiksu/asotracking/FiksuIntegrationError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected static readReceiversFromManifest(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v4, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 134
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 153
    :cond_0
    return-object v4

    .line 138
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "installReferrerIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 147
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 151
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static readTargetsFromMetaData(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 95
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_1

    .line 96
    const-string v7, "FiksuTracking"

    const-string v8, "Couldn\'t get PackageManager."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    return-object v6

    .line 101
    :cond_1
    :try_start_0
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/fiksu/asotracking/InstallTracking;

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const/16 v8, 0x80

    .line 101
    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 103
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    if-nez v7, :cond_3

    .line 104
    :cond_2
    const-string v7, "FiksuTracking"

    const-string v8, "No forwarding metadata."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "FiksuTracking"

    const-string v8, "Couldn\'t get info for receivers."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v4    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    :try_start_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 110
    .local v3, "metaData":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "key":Ljava/lang/String;
    const-string v8, "forward."

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 117
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 118
    :cond_5
    const-string v8, "FiksuTracking"

    const-string v9, "Couldn\'t parse receiver from metadata."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected forwardToOtherReceivers(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/fiksu/asotracking/InstallTracking;->readTargetsFromMetaData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "badlyBehaved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 89
    return-void

    .line 71
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    .local v4, "value":Ljava/lang/String;
    const-string v5, "com.fiksu.asotracking.InstallTracking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 75
    :cond_2
    const-string v5, "getjar."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 82
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v1}, Lcom/fiksu/asotracking/InstallTracking;->forwardToReceiver(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    .end local v1    # "className":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .restart local v1    # "className":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v1}, Lcom/fiksu/asotracking/InstallTracking;->forwardToReceiver(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected forwardToReceiver(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receiverClassName"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    .line 57
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {v2, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 58
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Forwarded to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .end local v2    # "receiver":Landroid/content/BroadcastReceiver;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "missing":Ljava/lang/ClassNotFoundException;
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Forward failed, couldn\'t load class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v1    # "missing":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "error":Ljava/lang/Exception;
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Forwarding to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/fiksu/asotracking/InstallTracking;->uploadConversionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/fiksu/asotracking/InstallTracking;->forwardToOtherReceivers(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method protected uploadConversionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    :try_start_0
    const-string v2, "referrer"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "referrer":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 44
    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_0
    new-instance v2, Lcom/fiksu/asotracking/ConversionEventTracker;

    invoke-direct {v2, p1, v1}, Lcom/fiksu/asotracking/ConversionEventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Lcom/fiksu/asotracking/ConversionEventTracker;->uploadEventSynchronously(J)V

    .line 52
    .end local v1    # "referrer":Ljava/lang/String;
    :goto_1
    return-void

    .line 46
    .restart local v1    # "referrer":Ljava/lang/String;
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "referrer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FiksuTracking"

    const-string v3, "Unhandled exception processing intent."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
