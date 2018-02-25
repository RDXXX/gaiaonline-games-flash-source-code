.class Lcom/ansca/corona/MapView$7;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MapView;->addMarker(DDLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MapView;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D

.field final synthetic val$subtitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MapView;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/ansca/corona/MapView$7;->this$0:Lcom/ansca/corona/MapView;

    iput-wide p2, p0, Lcom/ansca/corona/MapView$7;->val$latitude:D

    iput-wide p4, p0, Lcom/ansca/corona/MapView$7;->val$longitude:D

    iput-object p6, p0, Lcom/ansca/corona/MapView$7;->val$title:Ljava/lang/String;

    iput-object p7, p0, Lcom/ansca/corona/MapView$7;->val$subtitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 545
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:addMarker("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-wide v1, p0, Lcom/ansca/corona/MapView$7;->val$latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-wide v1, p0, Lcom/ansca/corona/MapView$7;->val$longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v1, p0, Lcom/ansca/corona/MapView$7;->val$title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 551
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-object v1, p0, Lcom/ansca/corona/MapView$7;->this$0:Lcom/ansca/corona/MapView;

    iget-object v2, p0, Lcom/ansca/corona/MapView$7;->val$title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ansca/corona/MapView;->access$400(Lcom/ansca/corona/MapView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :goto_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v1, p0, Lcom/ansca/corona/MapView$7;->val$subtitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 560
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v1, p0, Lcom/ansca/corona/MapView$7;->this$0:Lcom/ansca/corona/MapView;

    iget-object v2, p0, Lcom/ansca/corona/MapView$7;->val$subtitle:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ansca/corona/MapView;->access$400(Lcom/ansca/corona/MapView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v1, p0, Lcom/ansca/corona/MapView$7;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v1}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 569
    return-void

    .line 556
    :cond_0
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 565
    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
