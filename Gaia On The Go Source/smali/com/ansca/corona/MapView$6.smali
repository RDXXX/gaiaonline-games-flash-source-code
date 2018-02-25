.class Lcom/ansca/corona/MapView$6;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MapView;->setRegion(DDDDZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MapView;

.field final synthetic val$isAnimated:Z

.field final synthetic val$latitude:D

.field final synthetic val$latitudeSpan:D

.field final synthetic val$longitude:D

.field final synthetic val$longitudeSpan:D


# direct methods
.method constructor <init>(Lcom/ansca/corona/MapView;DDDDZ)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/ansca/corona/MapView$6;->this$0:Lcom/ansca/corona/MapView;

    iput-wide p2, p0, Lcom/ansca/corona/MapView$6;->val$latitude:D

    iput-wide p4, p0, Lcom/ansca/corona/MapView$6;->val$longitude:D

    iput-wide p6, p0, Lcom/ansca/corona/MapView$6;->val$latitudeSpan:D

    iput-wide p8, p0, Lcom/ansca/corona/MapView$6;->val$longitudeSpan:D

    iput-boolean p10, p0, Lcom/ansca/corona/MapView$6;->val$isAnimated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 511
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:setRegion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-wide v1, p0, Lcom/ansca/corona/MapView$6;->val$latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-wide v1, p0, Lcom/ansca/corona/MapView$6;->val$longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-wide v1, p0, Lcom/ansca/corona/MapView$6;->val$latitudeSpan:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-wide v1, p0, Lcom/ansca/corona/MapView$6;->val$longitudeSpan:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-boolean v1, p0, Lcom/ansca/corona/MapView$6;->val$isAnimated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v1, p0, Lcom/ansca/corona/MapView$6;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v1}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 523
    return-void
.end method
