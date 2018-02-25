.class Lcom/fiksu/asotracking/LaunchEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "LaunchEventTracker.java"


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/LaunchEventTracker;-><init>(Landroid/app/Application;Z)V

    .line 19
    return-void
.end method

.method constructor <init>(Landroid/app/Application;Z)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "notification"    # Z

    .prologue
    .line 22
    if-eqz p2, :cond_0

    const-string v0, "NotificationLaunch"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void

    .line 22
    :cond_0
    const-string v0, "Launch"

    goto :goto_0
.end method
