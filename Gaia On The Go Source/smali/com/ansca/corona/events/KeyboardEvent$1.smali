.class Lcom/ansca/corona/events/KeyboardEvent$1;
.super Ljava/lang/Object;
.source "KeyboardEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/events/KeyboardEvent;->Send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/events/KeyboardEvent;


# direct methods
.method constructor <init>(Lcom/ansca/corona/events/KeyboardEvent;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ansca/corona/events/KeyboardEvent$1;->this$0:Lcom/ansca/corona/events/KeyboardEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 52
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/ansca/corona/events/KeyboardEvent$NonOverriddenKeyEvent;

    iget-object v2, p0, Lcom/ansca/corona/events/KeyboardEvent$1;->this$0:Lcom/ansca/corona/events/KeyboardEvent;

    iget-object v3, p0, Lcom/ansca/corona/events/KeyboardEvent$1;->this$0:Lcom/ansca/corona/events/KeyboardEvent;

    invoke-static {v3}, Lcom/ansca/corona/events/KeyboardEvent;->access$000(Lcom/ansca/corona/events/KeyboardEvent;)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ansca/corona/events/KeyboardEvent$NonOverriddenKeyEvent;-><init>(Lcom/ansca/corona/events/KeyboardEvent;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method
