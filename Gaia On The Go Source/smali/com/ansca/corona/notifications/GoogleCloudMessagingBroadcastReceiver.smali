.class public Lcom/ansca/corona/notifications/GoogleCloudMessagingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GoogleCloudMessagingBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    new-instance v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    invoke-direct {v0, p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "gcmServices":Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
    invoke-virtual {v0, p2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->process(Landroid/content/Intent;)V

    .line 22
    return-void
.end method
