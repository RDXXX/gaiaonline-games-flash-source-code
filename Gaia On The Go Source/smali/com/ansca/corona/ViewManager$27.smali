.class Lcom/ansca/corona/ViewManager$27;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setMapType(ILcom/ansca/corona/MapType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$mapType:Lcom/ansca/corona/MapType;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILcom/ansca/corona/MapType;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$27;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$27;->val$mapType:Lcom/ansca/corona/MapType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1131
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$27;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/MapView;

    iget v3, p0, Lcom/ansca/corona/ViewManager$27;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/MapView;

    .line 1132
    .local v0, "view":Lcom/ansca/corona/MapView;
    if-eqz v0, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$27;->val$mapType:Lcom/ansca/corona/MapType;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MapView;->setMapType(Lcom/ansca/corona/MapType;)V

    .line 1135
    :cond_0
    return-void
.end method
