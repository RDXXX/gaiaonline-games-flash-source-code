.class public Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
.super Lcom/ansca/corona/notifications/NotificationSettings;
.source "ScheduledNotificationSettings.java"


# instance fields
.field private fEndTime:Ljava/util/Date;

.field private fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ansca/corona/notifications/NotificationSettings;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    .line 18
    new-instance v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->clone()Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    .line 28
    .local v0, "clone":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    .line 29
    iget-object v1, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->clone()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 30
    return-object v0
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
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->clone()Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->setId(I)V

    .line 45
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    .line 46
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->copyFrom(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    .line 47
    return-void
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v0

    return v0
.end method

.method public getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    return-object v0
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fEndTime:Ljava/util/Date;

    .line 82
    return-void
.end method

.method public setId(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 63
    return-void
.end method
