.class public Lcom/ansca/corona/MailSettings;
.super Ljava/lang/Object;
.source "MailSettings.java"


# instance fields
.field private fBccList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fBody:Ljava/lang/String;

.field private fCcList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fFileAttachments:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private fIsHtml:Z

.field private fSubject:Ljava/lang/String;

.field private fToList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fToList:Ljava/util/LinkedHashSet;

    .line 31
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fCcList:Ljava/util/LinkedHashSet;

    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fBccList:Ljava/util/LinkedHashSet;

    .line 33
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    .line 37
    return-void
.end method

.method private static addFileAttachmentObjectToCollection(Landroid/content/Context;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "collection":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/net/Uri;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 378
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 345
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 346
    if-eqz p0, :cond_0

    .line 347
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p0, p2}, Lcom/ansca/corona/FileContentProvider;->getContentUriFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, p2, [Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 351
    if-eqz p0, :cond_0

    .line 352
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 353
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/ansca/corona/FileContentProvider;->getContentUriFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, p2, Ljava/io/File;

    if-eqz v6, :cond_4

    .line 358
    if-eqz p0, :cond_0

    .line 359
    check-cast p2, Ljava/io/File;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2    # "filePath":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/ansca/corona/FileContentProvider;->getContentUriFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    .end local v2    # "filePath":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, p2, [Ljava/io/File;

    if-eqz v6, :cond_5

    .line 364
    if-eqz p0, :cond_0

    .line 365
    check-cast p2, [Ljava/io/File;

    .end local p2    # "value":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Ljava/io/File;

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 366
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/ansca/corona/FileContentProvider;->getContentUriFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 370
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, p2, Landroid/net/Uri;

    if-eqz v6, :cond_6

    .line 371
    check-cast p2, Landroid/net/Uri;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v6, p2, [Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 374
    check-cast p2, [Landroid/net/Uri;

    .end local p2    # "value":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Landroid/net/Uri;

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 375
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p1, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private static addStringObjectToCollection(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "collection":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 326
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 306
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_0
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 307
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :catch_0
    move-exception v6

    goto :goto_0

    .line 309
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, p1, [Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 310
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 311
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 314
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "text":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, p1, Ljava/util/HashMap;

    if-eqz v6, :cond_5

    .line 315
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 316
    .local v4, "nextObject":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 317
    check-cast v4, Ljava/lang/String;

    .end local v4    # "nextObject":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 321
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, p1, Ljava/util/Collection;

    if-eqz v6, :cond_0

    .line 322
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;Ljava/util/HashMap;)Lcom/ansca/corona/MailSettings;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ansca/corona/MailSettings;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "collection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lcom/ansca/corona/MailSettings;

    invoke-direct {v5}, Lcom/ansca/corona/MailSettings;-><init>()V

    .line 236
    .local v5, "settings":Lcom/ansca/corona/MailSettings;
    if-nez p1, :cond_1

    .line 288
    :cond_0
    return-object v5

    .line 241
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "keyName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 245
    .local v6, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    if-eqz v6, :cond_2

    .line 250
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 251
    const-string v7, "to"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    invoke-virtual {v5}, Lcom/ansca/corona/MailSettings;->getToList()Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/ansca/corona/MailSettings;->addStringObjectToCollection(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_3
    const-string v7, "cc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 255
    invoke-virtual {v5}, Lcom/ansca/corona/MailSettings;->getCcList()Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/ansca/corona/MailSettings;->addStringObjectToCollection(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_4
    const-string v7, "bcc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 258
    invoke-virtual {v5}, Lcom/ansca/corona/MailSettings;->getBccList()Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/ansca/corona/MailSettings;->addStringObjectToCollection(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    :cond_5
    const-string v7, "subject"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 261
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 262
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v6}, Lcom/ansca/corona/MailSettings;->setSubject(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_6
    const-string v7, "body"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 266
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 267
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v6}, Lcom/ansca/corona/MailSettings;->setBody(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_7
    const-string v7, "isbodyhtml"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 271
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    .line 272
    check-cast v6, Ljava/lang/Boolean;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/ansca/corona/MailSettings;->setHtmlFlag(Z)V

    goto/16 :goto_0

    .line 275
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_8
    const-string v7, "attachment"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 276
    instance-of v7, v6, Ljava/util/HashMap;

    if-eqz v7, :cond_9

    .line 277
    check-cast v6, Ljava/util/HashMap;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 278
    .local v4, "nextObject":Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/ansca/corona/MailSettings;->getFileAttachments()Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-static {p0, v7, v4}, Lcom/ansca/corona/MailSettings;->addFileAttachmentObjectToCollection(Landroid/content/Context;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto :goto_1

    .line 282
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "nextObject":Ljava/lang/Object;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_9
    invoke-virtual {v5}, Lcom/ansca/corona/MailSettings;->getFileAttachments()Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/ansca/corona/MailSettings;->addFileAttachmentObjectToCollection(Landroid/content/Context;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static fromUrl(Ljava/lang/String;)Lcom/ansca/corona/MailSettings;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v7, Lcom/ansca/corona/MailSettings;

    invoke-direct {v7}, Lcom/ansca/corona/MailSettings;-><init>()V

    .line 187
    .local v7, "settings":Lcom/ansca/corona/MailSettings;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v7

    .line 193
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v6

    .line 194
    .local v6, "mailToConverter":Landroid/net/MailTo;
    invoke-virtual {v6}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 195
    invoke-virtual {v6}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v0, v1, v2

    .line 196
    .local v0, "addressName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/ansca/corona/MailSettings;->getToList()Ljava/util/LinkedHashSet;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v0    # "addressName":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    invoke-virtual {v6}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 200
    invoke-virtual {v6}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v0, v1, v2

    .line 201
    .restart local v0    # "addressName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/ansca/corona/MailSettings;->getCcList()Ljava/util/LinkedHashSet;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 204
    .end local v0    # "addressName":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    invoke-virtual {v6}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 205
    invoke-virtual {v6}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ansca/corona/MailSettings;->setSubject(Ljava/lang/String;)V

    .line 207
    :cond_4
    invoke-virtual {v6}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 208
    invoke-virtual {v6}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ansca/corona/MailSettings;->setBody(Ljava/lang/String;)V

    .line 210
    :cond_5
    invoke-virtual {v6}, Landroid/net/MailTo;->getHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 211
    .local v4, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bcc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 212
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v5, :cond_6

    aget-object v0, v1, v3

    .line 213
    .restart local v0    # "addressName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/ansca/corona/MailSettings;->getBccList()Ljava/util/LinkedHashSet;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 219
    .end local v0    # "addressName":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "len$":I
    .end local v6    # "mailToConverter":Landroid/net/MailTo;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method


# virtual methods
.method public getBccList()Ljava/util/LinkedHashSet;
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
    .line 60
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBccList:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCcList()Ljava/util/LinkedHashSet;
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
    .line 52
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fCcList:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getFileAttachments()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getToList()Ljava/util/LinkedHashSet;
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
    .line 44
    iget-object v0, p0, Lcom/ansca/corona/MailSettings;->fToList:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public isHtml()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    .line 101
    return-void

    .line 100
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setHtmlFlag(Z)V
    .locals 0
    .param p1, "isHtml"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    .line 118
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    .line 85
    return-void

    .line 84
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 128
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-le v6, v9, :cond_1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 129
    .local v0, "actionStringKey":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "intent":Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    if-eqz v6, :cond_2

    const-string v3, "text/html"

    .line 135
    .local v3, "mimeType":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 136
    const/4 v4, 0x1

    .line 137
    .local v4, "same":Z
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/Uri;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v6}, Lcom/ansca/corona/FileServices;->getMimeTypeFrom(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 139
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v6}, Lcom/ansca/corona/FileServices;->getMimeTypeFrom(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eq v3, v6, :cond_0

    .line 141
    const/4 v4, 0x0

    .line 142
    const-string v3, "*/*"

    goto :goto_2

    .line 128
    .end local v0    # "actionStringKey":Ljava/lang/String;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/Uri;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "same":Z
    :cond_1
    const-string v0, "android.intent.action.SEND"

    goto :goto_0

    .line 131
    .restart local v0    # "actionStringKey":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v3, "plain/text"

    goto :goto_1

    .line 147
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fToList:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 149
    const-string v7, "android.intent.extra.EMAIL"

    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fToList:Ljava/util/LinkedHashSet;

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :cond_4
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fCcList:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 152
    const-string v7, "android.intent.extra.CC"

    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fCcList:Ljava/util/LinkedHashSet;

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_5
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fBccList:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 155
    const-string v7, "android.intent.extra.BCC"

    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fBccList:Ljava/util/LinkedHashSet;

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_6
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 158
    const-string v6, "android.intent.extra.SUBJECT"

    iget-object v7, p0, Lcom/ansca/corona/MailSettings;->fSubject:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :cond_7
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 161
    const-string v7, "android.intent.extra.TEXT"

    iget-boolean v6, p0, Lcom/ansca/corona/MailSettings;->fIsHtml:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    :goto_3
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 163
    :cond_8
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-le v6, v9, :cond_c

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v5, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 171
    .end local v5    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 172
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    :cond_a
    return-object v2

    .line 161
    :cond_b
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fBody:Ljava/lang/String;

    goto :goto_3

    .line 168
    :cond_c
    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-ne v6, v9, :cond_9

    .line 169
    const-string v7, "android.intent.extra.STREAM"

    iget-object v6, p0, Lcom/ansca/corona/MailSettings;->fFileAttachments:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_4
.end method
