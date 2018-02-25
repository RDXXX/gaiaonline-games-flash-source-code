.class Lcom/ansca/corona/CoronaActivity$5;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$5;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1446
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    const-string v0, "mail"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->popupClosedEvent(Ljava/lang/String;Z)V

    .line 1449
    :cond_0
    return-void
.end method
