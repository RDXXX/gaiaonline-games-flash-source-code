.class public Lcom/ansca/corona/SmsSettings;
.super Ljava/lang/Object;
.source "SmsSettings.java"


# instance fields
.field private fRecipients:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/SmsSettings;->fRecipients:Ljava/util/LinkedHashSet;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static from(Ljava/util/HashMap;)Lcom/ansca/corona/SmsSettings;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ansca/corona/SmsSettings;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "collection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Lcom/ansca/corona/SmsSettings;

    invoke-direct {v7}, Lcom/ansca/corona/SmsSettings;-><init>()V

    .line 86
    .local v7, "settings":Lcom/ansca/corona/SmsSettings;
    if-nez p0, :cond_1

    .line 132
    :cond_0
    return-object v7

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 93
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    .local v4, "keyName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 95
    .local v9, "value":Ljava/lang/Object;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    if-eqz v9, :cond_2

    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 101
    const-string v10, "to"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 102
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 103
    invoke-virtual {v7}, Lcom/ansca/corona/SmsSettings;->getRecipients()Ljava/util/LinkedHashSet;

    move-result-object v10

    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v10, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v10, v9, [Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 106
    check-cast v9, [Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v8, v0, v3

    .line 107
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/ansca/corona/SmsSettings;->getRecipients()Ljava/util/LinkedHashSet;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "text":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v10, v9, Ljava/util/HashMap;

    if-eqz v10, :cond_6

    .line 111
    check-cast v9, Ljava/util/HashMap;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 112
    .local v6, "nextObject":Ljava/lang/Object;
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 113
    invoke-virtual {v7}, Lcom/ansca/corona/SmsSettings;->getRecipients()Ljava/util/LinkedHashSet;

    move-result-object v10

    check-cast v6, Ljava/lang/String;

    .end local v6    # "nextObject":Ljava/lang/Object;
    invoke-virtual {v10, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_2

    .line 119
    :try_start_0
    invoke-virtual {v7}, Lcom/ansca/corona/SmsSettings;->getRecipients()Ljava/util/LinkedHashSet;

    move-result-object v10

    check-cast v9, Ljava/util/Collection;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v10, v9}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 121
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 124
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_7
    const-string v10, "body"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 125
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 126
    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v7, v9}, Lcom/ansca/corona/SmsSettings;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getRecipients()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ansca/corona/SmsSettings;->fRecipients:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    .line 44
    return-void

    .line 43
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 53
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v5, p0, Lcom/ansca/corona/SmsSettings;->fRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 56
    const/4 v3, 0x1

    .line 57
    .local v3, "isFirstString":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v5, "sms:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v5, p0, Lcom/ansca/corona/SmsSettings;->fRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    .local v4, "phoneNumberString":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 61
    if-nez v3, :cond_1

    .line 62
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v3, 0x0

    goto :goto_0

    .line 68
    .end local v4    # "phoneNumberString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "isFirstString":Z
    :cond_3
    iget-object v5, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 71
    const-string v5, "sms_body"

    iget-object v6, p0, Lcom/ansca/corona/SmsSettings;->fText:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_4
    return-object v2
.end method
