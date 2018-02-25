.class public Lcom/gaiaonline/monstergalaxy/screen/Gallery;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;",
        ">",
        "Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private actualItemDistance:F

.field private adapter:Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field deltaScroll:F

.field private itemDistance:F

.field private items:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private itemsOnScreen:I

.field private margin:F

.field private maxItems:I

.field private scrollEnabled:Z

.field private scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

.field private startIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->scrollEnabled:Z

    .line 42
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setStretchable(Z)V

    .line 43
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 124
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemDistance:F

    .line 125
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    .line 124
    iput v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->actualItemDistance:F

    .line 126
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->actualItemDistance:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemsOnScreen:I

    .line 127
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemsOnScreen:I

    if-lt v0, v2, :cond_0

    .line 141
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->adapter:Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;->newItem()Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    move-result-object v1

    .line 130
    .local v1, "item":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;, "TT;"
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 135
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->elements:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v3, v0

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->actualItemDistance:F

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 136
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 137
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->adapter:Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;->configureItem(Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;I)V

    .line 139
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->needsRecalc:Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDeltaScroll()F
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->deltaScroll:F

    return v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    new-instance v0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    .line 33
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemDistance:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->setMaxVelocity(F)V

    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    return-object v0
.end method

.method public setAdapter(Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    .local p1, "adapter":Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;, "Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter<TT;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->adapter:Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;

    .line 47
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->maxItems:I

    .line 48
    return-void
.end method

.method public setDistance(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    int-to-float v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemDistance:F

    .line 53
    return-void
.end method

.method public setMargin(F)V
    .locals 1
    .param p1, "margin"    # F

    .prologue
    .line 57
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->margin:F

    .line 58
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "scrollEnabled"    # Z

    .prologue
    .line 38
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->scrollEnabled:Z

    .line 39
    return-void
.end method

.method protected update(F)V
    .locals 9
    .param p1, "deltaTime"    # F

    .prologue
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/Gallery;, "Lcom/gaiaonline/monstergalaxy/screen/Gallery<TT;>;"
    const/4 v8, 0x0

    .line 62
    sget-boolean v5, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->adapter:Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->update(F)V

    .line 66
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-virtual {v5, p1}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->update(F)V

    .line 70
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    if-nez v5, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->initialize()V

    .line 76
    :cond_1
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->getDeltaX()F

    move-result v5

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->deltaScroll:F

    .line 77
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->deltaScroll:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->scrollEnabled:Z

    if-nez v5, :cond_3

    .line 118
    :cond_2
    return-void

    .line 81
    :cond_3
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->elements:Ljava/util/Map;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 83
    .local v0, "actualPos":Lcom/badlogic/gdx/math/Vector2;
    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemsOnScreen:I

    int-to-float v6, v6

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->actualItemDistance:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->deltaScroll:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 84
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->startIdx:I

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemsOnScreen:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->maxItems:I

    if-gt v5, v6, :cond_2

    .line 90
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->startIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->startIdx:I

    .line 91
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 92
    .local v3, "itemToMove":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;, "TT;"
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->adapter:Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->startIdx:I

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemsOnScreen:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v3, v6}, Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;->configureItem(Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;I)V

    .line 93
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->elements:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    .line 95
    .local v4, "pos":Lcom/badlogic/gdx/math/Vector2;
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->actualItemDistance:F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemsOnScreen:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 112
    .end local v3    # "itemToMove":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;, "TT;"
    .end local v4    # "pos":Lcom/badlogic/gdx/math/Vector2;
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 113
    .local v2, "item":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;, "TT;"
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->deltaScroll:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_5

    .line 114
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->elements:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    .line 115
    .restart local v4    # "pos":Lcom/badlogic/gdx/math/Vector2;
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->deltaScroll:F

    invoke-virtual {v4, v6, v8}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 96
    .end local v2    # "item":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;, "TT;"
    .end local v4    # "pos":Lcom/badlogic/gdx/math/Vector2;
    :cond_6
    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->deltaScroll:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->margin:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 97
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->startIdx:I

    if-eqz v5, :cond_2

    .line 101
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->startIdx:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->startIdx:I

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemsOnScreen:I

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_7

    .line 106
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 107
    .restart local v3    # "itemToMove":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;, "TT;"
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->adapter:Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->startIdx:I

    invoke-virtual {v5, v3, v6}, Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;->configureItem(Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;I)V

    .line 108
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->elements:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    .line 109
    .restart local v4    # "pos":Lcom/badlogic/gdx/math/Vector2;
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->actualItemDistance:F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->itemsOnScreen:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    .line 104
    .end local v3    # "itemToMove":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;, "TT;"
    .end local v4    # "pos":Lcom/badlogic/gdx/math/Vector2;
    :cond_7
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->items:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
