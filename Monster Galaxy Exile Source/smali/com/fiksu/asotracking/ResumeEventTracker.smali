.class Lcom/fiksu/asotracking/ResumeEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "ResumeEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/ResumeEventTracker;-><init>(Landroid/content/Context;Z)V

    .line 18
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Z

    .prologue
    .line 21
    if-eqz p2, :cond_0

    const-string v0, "NotificationResume"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    return-void

    .line 21
    :cond_0
    const-string v0, "Resume"

    goto :goto_0
.end method
