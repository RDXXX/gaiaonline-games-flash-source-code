.class Lcom/ansca/corona/ViewManager$11;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewFont(ILjava/lang/String;FLcom/ansca/corona/CoronaActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$activity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$fontName:Ljava/lang/String;

.field final synthetic val$fontSize:F

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;FLcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$11;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$11;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$11;->val$fontName:Ljava/lang/String;

    iput p4, p0, Lcom/ansca/corona/ViewManager$11;->val$fontSize:F

    iput-object p5, p0, Lcom/ansca/corona/ViewManager$11;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 512
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$11;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/CoronaEditText;

    iget v3, p0, Lcom/ansca/corona/ViewManager$11;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 513
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$11;->val$fontName:Ljava/lang/String;

    iget v2, p0, Lcom/ansca/corona/ViewManager$11;->val$fontSize:F

    iget-object v3, p0, Lcom/ansca/corona/ViewManager$11;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/CoronaEditText;->setTextViewFont(Ljava/lang/String;FLcom/ansca/corona/CoronaActivity;)V

    goto :goto_0
.end method
