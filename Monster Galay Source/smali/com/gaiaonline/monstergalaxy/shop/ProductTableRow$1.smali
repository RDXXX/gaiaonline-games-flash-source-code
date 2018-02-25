.class Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow$1;
.super Ljava/lang/Object;
.source "ProductTableRow.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/Product;Lcom/badlogic/gdx/graphics/Color;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "releasePoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->listener:Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;

    iget-object v1, v0, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->listener:Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow$1;->this$0:Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/shop/ProductTableRow;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    invoke-interface {v1, v0}, Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;->itemSelected(Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method
