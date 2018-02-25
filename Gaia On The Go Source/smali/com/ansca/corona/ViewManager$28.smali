.class Lcom/ansca/corona/ViewManager$28;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->addMapMarker(IDDLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D

.field final synthetic val$subtitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$28;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$28;->val$id:I

    iput-wide p3, p0, Lcom/ansca/corona/ViewManager$28;->val$latitude:D

    iput-wide p5, p0, Lcom/ansca/corona/ViewManager$28;->val$longitude:D

    iput-object p7, p0, Lcom/ansca/corona/ViewManager$28;->val$title:Ljava/lang/String;

    iput-object p8, p0, Lcom/ansca/corona/ViewManager$28;->val$subtitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$28;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/MapView;

    iget v3, p0, Lcom/ansca/corona/ViewManager$28;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/MapView;

    .line 1145
    .local v0, "view":Lcom/ansca/corona/MapView;
    if-eqz v0, :cond_0

    .line 1146
    iget-wide v1, p0, Lcom/ansca/corona/ViewManager$28;->val$latitude:D

    iget-wide v3, p0, Lcom/ansca/corona/ViewManager$28;->val$longitude:D

    iget-object v5, p0, Lcom/ansca/corona/ViewManager$28;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/ansca/corona/ViewManager$28;->val$subtitle:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/MapView;->addMarker(DDLjava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_0
    return-void
.end method
