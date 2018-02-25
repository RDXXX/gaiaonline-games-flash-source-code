.class public Lcom/sessionm/core/AchievementImpl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/api/ext/Achievement;


# instance fields
.field private achievementId:I

.field protected achievementJson:Lcom/sessionm/json/JSONObject;

.field private name:Ljava/lang/String;

.field private timesEarned:I

.field private unclaimed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sessionm/json/JSONObject;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/core/AchievementImpl;->name:Ljava/lang/String;

    .line 17
    const-string v0, "unclaimed"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/core/AchievementImpl;->unclaimed:Ljava/lang/String;

    .line 18
    const-string v0, "times_earned"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sessionm/core/AchievementImpl;->timesEarned:I

    .line 19
    const-string v0, "achievement_id"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sessionm/core/AchievementImpl;->achievementId:I

    .line 20
    iput-object p1, p0, Lcom/sessionm/core/AchievementImpl;->achievementJson:Lcom/sessionm/json/JSONObject;

    .line 21
    return-void
.end method


# virtual methods
.method public getAchievementId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sessionm/core/AchievementImpl;->achievementId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sessionm/core/AchievementImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTimesEarned()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/sessionm/core/AchievementImpl;->timesEarned:I

    return v0
.end method

.method public getUnclaimed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sessionm/core/AchievementImpl;->unclaimed:Ljava/lang/String;

    return-object v0
.end method

.method public getValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sessionm/core/AchievementImpl;->achievementJson:Lcom/sessionm/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/sessionm/json/JSONObject;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
