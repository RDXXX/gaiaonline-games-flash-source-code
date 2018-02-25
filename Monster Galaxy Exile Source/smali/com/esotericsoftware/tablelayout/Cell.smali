.class public Lcom/esotericsoftware/tablelayout/Cell;
.super Ljava/lang/Object;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field align:Ljava/lang/Integer;

.field cellAboveIndex:I

.field colspan:Ljava/lang/Integer;

.field column:I

.field endRow:Z

.field expandX:Ljava/lang/Integer;

.field expandY:Ljava/lang/Integer;

.field fillX:Ljava/lang/Float;

.field fillY:Ljava/lang/Float;

.field ignore:Ljava/lang/Boolean;

.field private final layout:Lcom/esotericsoftware/tablelayout/BaseTableLayout;

.field maxHeight:Ljava/lang/String;

.field maxWidth:Ljava/lang/String;

.field minHeight:Ljava/lang/String;

.field minWidth:Ljava/lang/String;

.field name:Ljava/lang/String;

.field padBottom:Ljava/lang/String;

.field padBottomTemp:I

.field padLeft:Ljava/lang/String;

.field padLeftTemp:I

.field padRight:Ljava/lang/String;

.field padRightTemp:I

.field padTop:Ljava/lang/String;

.field padTopTemp:I

.field prefHeight:Ljava/lang/String;

.field prefWidth:Ljava/lang/String;

.field row:I

.field spaceBottom:Ljava/lang/String;

.field spaceLeft:Ljava/lang/String;

.field spaceRight:Ljava/lang/String;

.field spaceTop:Ljava/lang/String;

.field uniformX:Ljava/lang/Boolean;

.field uniformY:Ljava/lang/Boolean;

.field widget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field widgetHeight:I

.field widgetWidth:I

.field widgetX:I

.field widgetY:I


# direct methods
.method constructor <init>(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .prologue
    .line 57
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->cellAboveIndex:I

    .line 58
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->layout:Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 59
    return-void
.end method

.method static defaults(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 6
    .param p0, "layout"    # Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 650
    new-instance v0, Lcom/esotericsoftware/tablelayout/Cell;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/tablelayout/Cell;-><init>(Lcom/esotericsoftware/tablelayout/BaseTableLayout;)V

    .line 651
    .local v0, "defaults":Lcom/esotericsoftware/tablelayout/Cell;
    const-string v1, "min"

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    .line 652
    const-string v1, "min"

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    .line 653
    const-string v1, "pref"

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    .line 654
    const-string v1, "pref"

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    .line 655
    const-string v1, "max"

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    .line 656
    const-string v1, "max"

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    .line 657
    iput-object v2, v0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 658
    iput-object v2, v0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 659
    iput-object v2, v0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 660
    iput-object v2, v0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 661
    iput-object v2, v0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 662
    iput-object v2, v0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 663
    iput-object v2, v0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 664
    iput-object v2, v0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 665
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    .line 666
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    .line 667
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 668
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    .line 669
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    .line 670
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    .line 671
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    .line 672
    return-object v0
.end method


# virtual methods
.method public align(Ljava/lang/Integer;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "align"    # Ljava/lang/Integer;

    .prologue
    .line 400
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 401
    return-object p0
.end method

.method public align(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 407
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 408
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 409
    :cond_0
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 410
    :cond_1
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 411
    :cond_2
    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 412
    :cond_3
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 413
    :cond_4
    return-object p0
.end method

.method public bottom()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 445
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 451
    :goto_0
    return-object p0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 449
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public center()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 417
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 421
    :goto_0
    return-object p0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public colspan(Ljava/lang/Integer;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "colspan"    # Ljava/lang/Integer;

    .prologue
    .line 507
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    .line 508
    return-object p0
.end method

.method public expand()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 2

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v1, 0x1

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    .line 466
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    .line 467
    return-object p0
.end method

.method public expand(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "x"    # Ljava/lang/Integer;
    .param p2, "y"    # Ljava/lang/Integer;

    .prologue
    .line 481
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    .line 482
    iput-object p2, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    .line 483
    return-object p0
.end method

.method public expand(ZZ)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 3
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    .line 488
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    .line 489
    return-object p0

    :cond_0
    move v0, v2

    .line 487
    goto :goto_0

    :cond_1
    move v1, v2

    .line 488
    goto :goto_1
.end method

.method public expandX()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 471
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    .line 472
    return-object p0
.end method

.method public expandY()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 476
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    .line 477
    return-object p0
.end method

.method public fill()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 2

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    .line 370
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    .line 371
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    .line 372
    return-object p0
.end method

.method public fill(Ljava/lang/Float;Ljava/lang/Float;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "x"    # Ljava/lang/Float;
    .param p2, "y"    # Ljava/lang/Float;

    .prologue
    .line 386
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    .line 387
    iput-object p2, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    .line 388
    return-object p0
.end method

.method public fill(ZZ)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 3
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 392
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    .line 393
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    .line 394
    return-object p0

    :cond_0
    move v0, v2

    .line 392
    goto :goto_0

    :cond_1
    move v1, v2

    .line 393
    goto :goto_1
.end method

.method public fillX()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 376
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    .line 377
    return-object p0
.end method

.method public fillY()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    .line 382
    return-object p0
.end method

.method public getAlign()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 622
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColspan()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 634
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 550
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->column:I

    return v0
.end method

.method public getExpandX()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 626
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExpandY()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 630
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFillX()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 614
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    return-object v0
.end method

.method public getFillY()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 618
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    return-object v0
.end method

.method public getIgnore()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v0, 0x1

    .line 503
    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getMinHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getMinWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPadBottom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    return-object v0
.end method

.method public getPadLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    return-object v0
.end method

.method public getPadRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    return-object v0
.end method

.method public getPadTop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 554
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->row:I

    return v0
.end method

.method public getSpaceBottom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceTop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    return-object v0
.end method

.method public getUniformX()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 638
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUniformY()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 642
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWidget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->widget:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidgetHeight()I
    .locals 1

    .prologue
    .line 546
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->widgetHeight:I

    return v0
.end method

.method public getWidgetWidth()I
    .locals 1

    .prologue
    .line 542
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->widgetWidth:I

    return v0
.end method

.method public getWidgetX()I
    .locals 1

    .prologue
    .line 534
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->widgetX:I

    return v0
.end method

.method public getWidgetY()I
    .locals 1

    .prologue
    .line 538
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->widgetY:I

    return v0
.end method

.method public ignore()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 498
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    .line 499
    return-object p0
.end method

.method public ignore(Ljava/lang/Boolean;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "ignore"    # Ljava/lang/Boolean;

    .prologue
    .line 493
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    .line 494
    return-object p0
.end method

.method public isEndRow()Z
    .locals 1

    .prologue
    .line 646
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->endRow:Z

    return v0
.end method

.method public left()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 435
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 436
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 441
    :goto_0
    return-object p0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 439
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public maxHeight(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "maxHeight"    # I

    .prologue
    .line 219
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public maxHeight(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "maxHeight"    # Ljava/lang/String;

    .prologue
    .line 203
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public maxSize(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 208
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    .line 209
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public maxSize(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 192
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public maxWidth(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "maxWidth"    # I

    .prologue
    .line 214
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public maxWidth(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "maxWidth"    # Ljava/lang/String;

    .prologue
    .line 198
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method merge(Lcom/esotericsoftware/tablelayout/Cell;)V
    .locals 1
    .param p1, "cell"    # Lcom/esotericsoftware/tablelayout/Cell;

    .prologue
    .line 88
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    .line 90
    :cond_2
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    .line 91
    :cond_3
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    .line 92
    :cond_4
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    .line 93
    :cond_5
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    .line 94
    :cond_6
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    .line 95
    :cond_7
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 96
    :cond_8
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 97
    :cond_9
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 98
    :cond_a
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 99
    :cond_b
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 100
    :cond_c
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 101
    :cond_d
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 102
    :cond_e
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 103
    :cond_f
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    .line 104
    :cond_10
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    .line 105
    :cond_11
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 106
    :cond_12
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    .line 107
    :cond_13
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    .line 108
    :cond_14
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    .line 109
    :cond_15
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    .line 110
    :cond_16
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    .line 111
    :cond_17
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method public minHeight(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "minHeight"    # I

    .prologue
    .line 155
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public minHeight(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "minHeight"    # Ljava/lang/String;

    .prologue
    .line 139
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public minSize(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 144
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public minSize(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 128
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public minWidth(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "minWidth"    # I

    .prologue
    .line 150
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public minWidth(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "minWidth"    # Ljava/lang/String;

    .prologue
    .line 134
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public pad(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "pad"    # I

    .prologue
    .line 333
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "value":Ljava/lang/String;
    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 335
    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 336
    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public pad(IIII)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "top"    # I
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "right"    # I

    .prologue
    .line 342
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 343
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 344
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 345
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public pad(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "pad"    # Ljava/lang/String;

    .prologue
    .line 297
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 298
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public pad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "top"    # Ljava/lang/String;
    .param p2, "left"    # Ljava/lang/String;
    .param p3, "bottom"    # Ljava/lang/String;
    .param p4, "right"    # Ljava/lang/String;

    .prologue
    .line 305
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 308
    iput-object p4, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public padBottom(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "padBottom"    # I

    .prologue
    .line 360
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 361
    return-object p0
.end method

.method public padBottom(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "padBottom"    # Ljava/lang/String;

    .prologue
    .line 323
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public padLeft(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "padLeft"    # I

    .prologue
    .line 355
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public padLeft(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "padLeft"    # Ljava/lang/String;

    .prologue
    .line 318
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 319
    return-object p0
.end method

.method public padRight(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "padRight"    # I

    .prologue
    .line 365
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public padRight(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "padRight"    # Ljava/lang/String;

    .prologue
    .line 328
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public padTop(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "padTop"    # I

    .prologue
    .line 350
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 351
    return-object p0
.end method

.method public padTop(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "padTop"    # Ljava/lang/String;

    .prologue
    .line 313
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public prefHeight(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "prefHeight"    # I

    .prologue
    .line 187
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public prefHeight(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "prefHeight"    # Ljava/lang/String;

    .prologue
    .line 171
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public prefSize(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 176
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public prefSize(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 160
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public prefWidth(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "prefWidth"    # I

    .prologue
    .line 182
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public prefWidth(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "prefWidth"    # Ljava/lang/String;

    .prologue
    .line 166
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public right()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 455
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 456
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 461
    :goto_0
    return-object p0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 459
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method set(Lcom/esotericsoftware/tablelayout/Cell;)V
    .locals 1
    .param p1, "defaults"    # Lcom/esotericsoftware/tablelayout/Cell;

    .prologue
    .line 62
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minWidth:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->minHeight:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefWidth:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->prefHeight:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxWidth:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->maxHeight:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padTop:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padLeft:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padBottom:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->padRight:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillX:Ljava/lang/Float;

    .line 77
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->fillY:Ljava/lang/Float;

    .line 78
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 79
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandX:Ljava/lang/Integer;

    .line 80
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->expandY:Ljava/lang/Integer;

    .line 81
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->ignore:Ljava/lang/Boolean;

    .line 82
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->colspan:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    .line 84
    iget-object v0, p1, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    .line 85
    return-void
.end method

.method public setWidget(Ljava/lang/Object;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/esotericsoftware/tablelayout/Cell;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    .local p1, "widget":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->layout:Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    iget-object v0, v0, Lcom/esotericsoftware/tablelayout/BaseTableLayout;->toolkit:Lcom/esotericsoftware/tablelayout/Toolkit;

    iget-object v1, p0, Lcom/esotericsoftware/tablelayout/Cell;->layout:Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    invoke-virtual {v0, v1, p0, p1}, Lcom/esotericsoftware/tablelayout/Toolkit;->setWidget(Lcom/esotericsoftware/tablelayout/BaseTableLayout;Lcom/esotericsoftware/tablelayout/Cell;Ljava/lang/Object;)V

    .line 116
    return-object p0
.end method

.method public space(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "space"    # I

    .prologue
    .line 260
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "value":Ljava/lang/String;
    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public space(IIII)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "top"    # I
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "right"    # I

    .prologue
    .line 269
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 270
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 271
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 272
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public space(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "space"    # Ljava/lang/String;

    .prologue
    .line 224
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 227
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public space(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "top"    # Ljava/lang/String;
    .param p2, "left"    # Ljava/lang/String;
    .param p3, "bottom"    # Ljava/lang/String;
    .param p4, "right"    # Ljava/lang/String;

    .prologue
    .line 232
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 235
    iput-object p4, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public spaceBottom(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "spaceBottom"    # I

    .prologue
    .line 287
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public spaceBottom(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "spaceBottom"    # Ljava/lang/String;

    .prologue
    .line 250
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceBottom:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public spaceLeft(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "spaceLeft"    # I

    .prologue
    .line 282
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public spaceLeft(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "spaceLeft"    # Ljava/lang/String;

    .prologue
    .line 245
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceLeft:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public spaceRight(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "spaceRight"    # I

    .prologue
    .line 292
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 293
    return-object p0
.end method

.method public spaceRight(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "spaceRight"    # Ljava/lang/String;

    .prologue
    .line 255
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceRight:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public spaceTop(I)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1
    .param p1, "spaceTop"    # I

    .prologue
    .line 277
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 278
    return-object p0
.end method

.method public spaceTop(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "spaceTop"    # Ljava/lang/String;

    .prologue
    .line 240
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->spaceTop:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public top()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 425
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 431
    :goto_0
    return-object p0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    .line 429
    iget-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->align:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public uniform()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 2

    .prologue
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v1, 0x1

    .line 512
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    .line 513
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    .line 514
    return-object p0
.end method

.method public uniform(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/esotericsoftware/tablelayout/Cell;
    .locals 0
    .param p1, "x"    # Ljava/lang/Boolean;
    .param p2, "y"    # Ljava/lang/Boolean;

    .prologue
    .line 528
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    iput-object p1, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    .line 529
    iput-object p2, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    .line 530
    return-object p0
.end method

.method public uniformX()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 518
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformX:Ljava/lang/Boolean;

    .line 519
    return-object p0
.end method

.method public uniformY()Lcom/esotericsoftware/tablelayout/Cell;
    .locals 1

    .prologue
    .line 523
    .local p0, "this":Lcom/esotericsoftware/tablelayout/Cell;, "Lcom/esotericsoftware/tablelayout/Cell<TC;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/tablelayout/Cell;->uniformY:Ljava/lang/Boolean;

    .line 524
    return-object p0
.end method
