.class public Lcom/sessionm/core/UserImpl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/api/User;


# instance fields
.field private optedOut:Z

.field private final playerData:Lcom/sessionm/json/JSONObject;

.field private final pointBalance:I

.field private final unclaimedAchievementCount:I

.field private final unclaimedAchievementValue:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/core/UserImpl;->playerData:Lcom/sessionm/json/JSONObject;

    .line 22
    iput v1, p0, Lcom/sessionm/core/UserImpl;->pointBalance:I

    .line 23
    iput v1, p0, Lcom/sessionm/core/UserImpl;->unclaimedAchievementCount:I

    .line 24
    iput v1, p0, Lcom/sessionm/core/UserImpl;->unclaimedAchievementValue:I

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/sessionm/json/JSONObject;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sessionm/core/UserImpl;->playerData:Lcom/sessionm/json/JSONObject;

    .line 29
    const-string v0, "point_balance"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sessionm/core/UserImpl;->pointBalance:I

    .line 30
    const-string v0, "opted_out"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sessionm/core/UserImpl;->optedOut:Z

    .line 31
    const-string v0, "unclaimed_achievement_count"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sessionm/core/UserImpl;->unclaimedAchievementCount:I

    .line 32
    const-string v0, "unclaimed_achievement_value"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sessionm/core/UserImpl;->unclaimedAchievementValue:I

    .line 33
    return-void
.end method


# virtual methods
.method public getPointBalance()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sessionm/core/UserImpl;->pointBalance:I

    return v0
.end method

.method public getUnclaimedAchievementCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sessionm/core/UserImpl;->unclaimedAchievementCount:I

    return v0
.end method

.method public getUnclaimedAchievementValue()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sessionm/core/UserImpl;->unclaimedAchievementValue:I

    return v0
.end method

.method public getValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sessionm/core/UserImpl;->playerData:Lcom/sessionm/json/JSONObject;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sessionm/core/UserImpl;->playerData:Lcom/sessionm/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/sessionm/json/JSONObject;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isOptedOut()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sessionm/core/UserImpl;->optedOut:Z

    return v0
.end method

.method public setOptedOut(Z)V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 49
    :cond_0
    iput-boolean p1, p0, Lcom/sessionm/core/UserImpl;->optedOut:Z

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-string v2, "member[opted_out]"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/sessionm/net/Request;

    sget-object v2, Lcom/sessionm/net/Request$Type;->OPT_IN_OUT:Lcom/sessionm/net/Request$Type;

    invoke-direct {v0, v2, v1}, Lcom/sessionm/net/Request;-><init>(Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 54
    new-instance v1, Lcom/sessionm/core/UserImpl$1;

    invoke-direct {v1, p0}, Lcom/sessionm/core/UserImpl$1;-><init>(Lcom/sessionm/core/UserImpl;)V

    invoke-virtual {v0, v1}, Lcom/sessionm/net/Request;->setListener(Lcom/sessionm/net/RequestListener;)V

    .line 63
    invoke-virtual {v0}, Lcom/sessionm/net/Request;->send()V

    goto :goto_0

    .line 52
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method
