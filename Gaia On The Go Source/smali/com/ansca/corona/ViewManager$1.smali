.class Lcom/ansca/corona/ViewManager$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->addTextView(IIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$height:I

.field final synthetic val$id:I

.field final synthetic val$isSingleLine:Z

.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IIIIIZ)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$1;->val$width:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$1;->val$height:I

    iput p4, p0, Lcom/ansca/corona/ViewManager$1;->val$left:I

    iput p5, p0, Lcom/ansca/corona/ViewManager$1;->val$top:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$1;->val$id:I

    iput-boolean p7, p0, Lcom/ansca/corona/ViewManager$1;->val$isSingleLine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 266
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v3

    if-nez v3, :cond_0

    .line 296
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Lcom/ansca/corona/CoronaEditText;

    iget-object v3, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, "editText":Lcom/ansca/corona/CoronaEditText;
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, p0, Lcom/ansca/corona/ViewManager$1;->val$width:I

    iget v4, p0, Lcom/ansca/corona/ViewManager$1;->val$height:I

    iget v5, p0, Lcom/ansca/corona/ViewManager$1;->val$left:I

    iget v6, p0, Lcom/ansca/corona/ViewManager$1;->val$top:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 273
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget v3, p0, Lcom/ansca/corona/ViewManager$1;->val$id:I

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setId(I)V

    .line 275
    new-instance v3, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    iget-object v4, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;-><init>(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/ViewManager$1;)V

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setTag(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->bringToFront()V

    .line 277
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setTextColor(I)V

    .line 278
    iget-boolean v3, p0, Lcom/ansca/corona/ViewManager$1;->val$isSingleLine:Z

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setSingleLine(Z)V

    .line 279
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setImeOptions(I)V

    .line 282
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getGravity()I

    move-result v3

    and-int/lit8 v1, v3, 0x7

    .line 283
    .local v1, "gravity":I
    iget-boolean v3, p0, Lcom/ansca/corona/ViewManager$1;->val$isSingleLine:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    :goto_1
    or-int/2addr v1, v3

    .line 284
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setGravity(I)V

    .line 287
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setNextFocusDownId(I)V

    .line 288
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setNextFocusUpId(I)V

    .line 289
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setNextFocusLeftId(I)V

    .line 290
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ansca/corona/CoronaEditText;->setNextFocusRightId(I)V

    .line 293
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$300(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$1;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$300(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 283
    :cond_1
    const/16 v3, 0x30

    goto :goto_1
.end method
