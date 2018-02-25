.class public Lcom/gaiaonline/monstergalaxy/shop/ShopTable;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "ShopTable.java"


# instance fields
.field private size:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 12
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->size:Lcom/badlogic/gdx/math/Vector2;

    .line 13
    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/shop/TableRow",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/shop/TableRow<TT;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 18
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->size:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 27
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->size:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 29
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v2, v3}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->setSize(FF)V

    .line 30
    return-void

    .line 18
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 19
    .local v1, "row":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
    add-int/lit8 v0, v0, -0x1

    .line 21
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 22
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v4, 0x0

    int-to-float v5, v0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/shop/DealTableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->dispose()V

    .line 40
    return-void
.end method

.method public getSize()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/ShopTable;->size:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method
