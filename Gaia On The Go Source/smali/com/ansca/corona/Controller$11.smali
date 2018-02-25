.class Lcom/ansca/corona/Controller$11;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showSendSmsWindow(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$smsSettings:Lcom/ansca/corona/SmsSettings;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/SmsSettings;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/ansca/corona/Controller$11;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$11;->val$smsSettings:Lcom/ansca/corona/SmsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1005
    monitor-enter p0

    .line 1006
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/Controller$11;->val$smsSettings:Lcom/ansca/corona/SmsSettings;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->showSendSmsWindowUsing(Lcom/ansca/corona/SmsSettings;)V

    .line 1009
    :cond_0
    monitor-exit p0

    .line 1010
    return-void

    .line 1009
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
