.class public Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
.super Lcom/ansca/corona/notifications/NotificationSettings;
.source "StatusBarNotificationSettings.java"


# static fields
.field public static final DEFAULT_ICON_RESOURCE_NAME:Ljava/lang/String; = "corona_statusbar_icon_default"


# instance fields
.field private fBadgeNumber:I

.field private fContentText:Ljava/lang/String;

.field private fContentTitle:Ljava/lang/String;

.field private fData:Lcom/ansca/corona/CoronaData$Table;

.field private fIconResourceName:Ljava/lang/String;

.field private fId:I

.field private fIsRemovable:Z

.field private fIsSourceLocal:Z

.field private fSoundFileUri:Landroid/net/Uri;

.field private fSourceName:Ljava/lang/String;

.field private fTickerText:Ljava/lang/String;

.field private fTimestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/ansca/corona/notifications/NotificationSettings;-><init>()V

    .line 51
    iput v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fId:I

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    .line 56
    const-string v0, "corona_statusbar_icon_default"

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    .line 58
    iput-boolean v2, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    .line 62
    new-instance v0, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->clone()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 72
    .local v0, "clone":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    .line 73
    iget-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaData$Table;->clone()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    .line 74
    return-object v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->clone()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 89
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    .line 90
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    .line 94
    iget v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    iput v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    .line 95
    iget-boolean v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    iput-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    .line 96
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    .line 97
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    .line 98
    iget-boolean v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    iput-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    .line 99
    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaData$Table;->clone()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    .line 100
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBadgeNumber()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    return v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/ansca/corona/CoronaData$Table;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/ansca/corona/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIconResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fId:I

    return v0
.end method

.method public getSoundFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTickerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    return v0
.end method

.method public isSourceLocal()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    return v0
.end method

.method public setBadgeNumber(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 249
    if-gez p1, :cond_0

    .line 250
    const/4 p1, 0x0

    .line 252
    :cond_0
    iput p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fBadgeNumber:I

    .line 253
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const-string p1, ""

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentText:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string p1, ""

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fContentTitle:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setData(Lcom/ansca/corona/CoronaData$Table;)V
    .locals 0
    .param p1, "data"    # Lcom/ansca/corona/CoronaData$Table;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fData:Lcom/ansca/corona/CoronaData$Table;

    .line 364
    return-void
.end method

.method public setIconResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const-string p1, ""

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIconResourceName:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fId:I

    .line 116
    return-void
.end method

.method public setRemovable(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsRemovable:Z

    .line 276
    return-void
.end method

.method public setSoundFileUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSoundFileUri:Landroid/net/Uri;

    .line 296
    return-void
.end method

.method public setSourceLocal(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fIsSourceLocal:Z

    .line 339
    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    const-string p1, ""

    .line 318
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fSourceName:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setTickerText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    const-string p1, ""

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTickerText:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 1
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->fTimestamp:Ljava/util/Date;

    .line 135
    return-void
.end method
