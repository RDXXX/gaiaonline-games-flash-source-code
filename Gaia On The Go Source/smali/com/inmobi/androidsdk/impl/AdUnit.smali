.class public Lcom/inmobi/androidsdk/impl/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;,
        Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;
    }
.end annotation


# instance fields
.field CDATABlock:Ljava/lang/String;

.field adActionType:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

.field adType:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

.field defaultTargetUrl:Ljava/lang/String;

.field deviceInfoUploadUrl:Ljava/lang/String;

.field height:I

.field sendDeviceInfo:Z

.field targetUrl:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->AdType_None:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->adType:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    .line 45
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Web:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->adActionType:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    .line 46
    return-void
.end method

.method public static adActionTypefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_None:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    .line 50
    .local v0, "aatype":Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;
    if-eqz p0, :cond_0

    .line 51
    const-string v1, "call"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Call:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    const-string v1, "sms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_SMS:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    goto :goto_0

    .line 55
    :cond_2
    const-string v1, "search"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    goto :goto_0

    .line 59
    :cond_3
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Web:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    goto :goto_0
.end method

.method public static adTypefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->AdType_None:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    .line 67
    .local v0, "aatype":Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;
    if-eqz p0, :cond_0

    .line 68
    const-string v1, "banner"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->AdType_Banner:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->AdType_Text:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "search"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->AdType_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    goto :goto_0
.end method


# virtual methods
.method public getAdActionType()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->adActionType:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    return-object v0
.end method

.method public getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->adType:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    return-object v0
.end method

.method public getCDATABlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->CDATABlock:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->defaultTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfoUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->deviceInfoUploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->height:I

    return v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->width:I

    return v0
.end method

.method public isSendDeviceInfo()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->sendDeviceInfo:Z

    return v0
.end method

.method public setAdActionType(Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;)V
    .locals 0
    .param p1, "adActionType"    # Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->adActionType:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    .line 93
    return-void
.end method

.method public setAdType(Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;)V
    .locals 0
    .param p1, "adType"    # Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->adType:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    .line 108
    return-void
.end method

.method public setCDATABlock(Ljava/lang/String;)V
    .locals 0
    .param p1, "cDATABlock"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->CDATABlock:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setDefaultTargetUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultTargetUrl"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->defaultTargetUrl:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setDeviceInfoUploadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceInfoUploadUrl"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->deviceInfoUploadUrl:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->height:I

    .line 173
    return-void
.end method

.method public setSendDeviceInfo(Z)V
    .locals 0
    .param p1, "sendDeviceInfo"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->sendDeviceInfo:Z

    .line 135
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->targetUrl:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/inmobi/androidsdk/impl/AdUnit;->width:I

    .line 165
    return-void
.end method
