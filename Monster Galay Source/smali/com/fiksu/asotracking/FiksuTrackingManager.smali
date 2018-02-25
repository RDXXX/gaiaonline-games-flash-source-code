.class public Lcom/fiksu/asotracking/FiksuTrackingManager;
.super Ljava/lang/Object;
.source "FiksuTrackingManager.java"


# static fields
.field static final FIKSU_LOG_TAG:Ljava/lang/String; = "FiksuTracking"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c2dMessageReceived(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/fiksu/asotracking/EventTracker;->c2dMessageReceived(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 21
    new-instance v0, Lcom/fiksu/asotracking/ForegroundTester;

    new-instance v1, Lcom/fiksu/asotracking/LaunchEventTracker;

    invoke-direct {v1, p0}, Lcom/fiksu/asotracking/LaunchEventTracker;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Lcom/fiksu/asotracking/ForegroundTester;-><init>(Landroid/app/Application;Lcom/fiksu/asotracking/LaunchEventTracker;)V

    .line 22
    invoke-static {p0}, Lcom/fiksu/asotracking/InstallTracking;->checkForFiksuReceiver(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public static promptForRating(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    new-instance v0, Lcom/fiksu/asotracking/RatingPrompter;

    invoke-direct {v0, p0}, Lcom/fiksu/asotracking/RatingPrompter;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/RatingPrompter;->maybeShowPrompt()V

    .line 39
    return-void
.end method

.method public static uploadPurchaseEvent(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "price"    # D
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lcom/fiksu/asotracking/PurchaseEventTracker;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p4}, Lcom/fiksu/asotracking/PurchaseEventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/PurchaseEventTracker;->uploadEvent()V

    .line 27
    return-void
.end method

.method public static uploadRegistrationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/fiksu/asotracking/RegistrationEventTracker;

    invoke-direct {v0, p0, p1}, Lcom/fiksu/asotracking/RegistrationEventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/RegistrationEventTracker;->uploadEvent()V

    .line 31
    return-void
.end method
