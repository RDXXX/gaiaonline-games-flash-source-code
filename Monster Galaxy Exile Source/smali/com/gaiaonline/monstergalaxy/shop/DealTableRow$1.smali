.class Lcom/gaiaonline/monstergalaxy/shop/DealTableRow$1;
.super Ljava/lang/Object;
.source "DealTableRow.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/Deal;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "releasePoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->listener:Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;

    iget-object v1, v0, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->listener:Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;

    invoke-interface {v1, v0}, Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;->itemSelected(Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method
