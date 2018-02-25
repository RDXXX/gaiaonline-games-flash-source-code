.class Lcom/ansca/corona/Controller$10;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showSendMailWindow(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$mailSettings:Lcom/ansca/corona/MailSettings;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/MailSettings;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/ansca/corona/Controller$10;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$10;->val$mailSettings:Lcom/ansca/corona/MailSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 980
    monitor-enter p0

    .line 981
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/Controller$10;->val$mailSettings:Lcom/ansca/corona/MailSettings;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->showSendMailWindowUsing(Lcom/ansca/corona/MailSettings;)V

    .line 984
    :cond_0
    monitor-exit p0

    .line 985
    return-void

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
