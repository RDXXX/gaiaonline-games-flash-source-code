.class Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;
.super Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;
.source "GoogleCloudMessagingServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegisterOperation"
.end annotation


# instance fields
.field private fProjectNumbers:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "projectNumbers"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;-><init>()V

    .line 553
    if-nez p1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 556
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->fProjectNumbers:Ljava/lang/String;

    .line 557
    return-void
.end method


# virtual methods
.method public getProjectNumbers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->fProjectNumbers:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 571
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 572
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 577
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 582
    const-string v2, "sender"

    iget-object v3, p0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->fProjectNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
