.class Lcom/ansca/corona/CoronaEditText$2;
.super Ljava/lang/Object;
.source "CoronaEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 54
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v3, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaEditText;->getInputType()I

    move-result v3

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    move v0, v1

    .line 61
    .local v0, "isSingleLine":Z
    :goto_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 74
    :cond_0
    :goto_1
    return v2

    .end local v0    # "isSingleLine":Z
    :cond_1
    move v0, v2

    .line 58
    goto :goto_0

    .line 66
    .restart local v0    # "isSingleLine":Z
    :cond_2
    iget-object v3, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v3, v2}, Lcom/ansca/corona/CoronaEditText;->access$002(Lcom/ansca/corona/CoronaEditText;Z)Z

    .line 69
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v3

    iget-object v4, p0, Lcom/ansca/corona/CoronaEditText$2;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v4}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2, v1}, Lcom/ansca/corona/events/EventManager;->textEvent(IZZ)V

    goto :goto_1
.end method
