.class Lcom/fiksu/asotracking/RegistrationEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "RegistrationEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "Registration"

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    const-string v0, "username"

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/RegistrationEventTracker;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
