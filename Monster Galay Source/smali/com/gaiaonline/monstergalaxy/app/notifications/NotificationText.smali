.class public Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;
.super Ljava/lang/Object;
.source "NotificationText.java"


# instance fields
.field private buttonText:Ljava/lang/String;

.field private id:I

.field private messageTemplate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "messageTemplate"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->id:I

    .line 16
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->messageTemplate:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->title:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->buttonText:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private getHighestLevelMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x1

    .line 45
    .local v0, "highestLevel":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 48
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 55
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    .line 76
    :goto_1
    return-object v1

    .line 48
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 49
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 58
    .end local v1    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 66
    :cond_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 70
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 76
    const/4 v1, 0x0

    goto :goto_1

    .line 58
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 59
    .restart local v1    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v3

    if-ne v3, v0, :cond_2

    goto :goto_1

    .line 66
    .end local v1    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 67
    .restart local v1    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 70
    .end local v1    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 71
    .restart local v1    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v3

    if-ne v3, v0, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public getButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->id:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->messageTemplate:Ljava/lang/String;

    const-string v2, "${TAMER_NAME}"

    .line 34
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getName()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "message":Ljava/lang/String;
    const-string v1, "${MOGA_NAME}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "${MOGA_NAME}"

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->getHighestLevelMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    return-object v0
.end method

.method public getMessageTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->messageTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string v0, "Island"

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "Island story"

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->title:Ljava/lang/String;

    goto :goto_0
.end method
