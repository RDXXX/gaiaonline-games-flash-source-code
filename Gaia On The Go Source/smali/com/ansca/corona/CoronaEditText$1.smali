.class Lcom/ansca/corona/CoronaEditText$1;
.super Ljava/lang/Object;
.source "CoronaEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaEditText;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaEditText;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 43
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaEditText;->access$002(Lcom/ansca/corona/CoronaEditText;Z)Z

    .line 49
    :cond_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$1;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/ansca/corona/events/EventManager;->textEvent(IZZ)V

    .line 51
    :cond_1
    return-void
.end method
