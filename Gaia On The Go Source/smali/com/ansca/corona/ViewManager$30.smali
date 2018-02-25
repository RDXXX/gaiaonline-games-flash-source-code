.class Lcom/ansca/corona/ViewManager$30;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setMapCenter(IDDZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$isAnimated:Z

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IDDZ)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$30;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$30;->val$id:I

    iput-wide p3, p0, Lcom/ansca/corona/ViewManager$30;->val$latitude:D

    iput-wide p5, p0, Lcom/ansca/corona/ViewManager$30;->val$longitude:D

    iput-boolean p7, p0, Lcom/ansca/corona/ViewManager$30;->val$isAnimated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$30;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/MapView;

    iget v3, p0, Lcom/ansca/corona/ViewManager$30;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/MapView;

    .line 1167
    .local v0, "view":Lcom/ansca/corona/MapView;
    if-eqz v0, :cond_0

    .line 1168
    iget-wide v1, p0, Lcom/ansca/corona/ViewManager$30;->val$latitude:D

    iget-wide v3, p0, Lcom/ansca/corona/ViewManager$30;->val$longitude:D

    iget-boolean v5, p0, Lcom/ansca/corona/ViewManager$30;->val$isAnimated:Z

    invoke-virtual/range {v0 .. v5}, Lcom/ansca/corona/MapView;->setCenter(DDZ)V

    .line 1170
    :cond_0
    return-void
.end method
