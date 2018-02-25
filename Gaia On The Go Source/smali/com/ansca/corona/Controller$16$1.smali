.class Lcom/ansca/corona/Controller$16$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$16;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$16;)V
    .locals 0

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/ansca/corona/Controller$16$1;->this$1:Lcom/ansca/corona/Controller$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 1580
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    const-string v1, "Dialog cancelled"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/events/EventManager;->fbConnectRequestEvent(Ljava/lang/String;ZZ)V

    .line 1583
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 1560
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1562
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/events/EventManager;->fbConnectRequestEvent(Ljava/lang/String;ZZ)V

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/Controller$16$1;->onCancel()V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 4
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 1575
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/events/EventManager;->fbConnectRequestEvent(Ljava/lang/String;ZZ)V

    .line 1578
    :cond_0
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 4
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 1570
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/events/EventManager;->fbConnectRequestEvent(Ljava/lang/String;ZZ)V

    .line 1573
    :cond_0
    return-void
.end method
