.class public Lcom/badlogic/gdx/audio/analysis/ThresholdFunction;
.super Ljava/lang/Object;
.source "ThresholdFunction.java"


# instance fields
.field private final historySize:I

.field private final multiplier:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .param p1, "historySize"    # I
    .param p2, "multiplier"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/badlogic/gdx/audio/analysis/ThresholdFunction;->historySize:I

    .line 39
    iput p2, p0, Lcom/badlogic/gdx/audio/analysis/ThresholdFunction;->multiplier:F

    .line 40
    return-void
.end method


# virtual methods
.method public calculate(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "spectralFlux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v5, "thresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, "sum":F
    const/4 v6, 0x0

    iget v7, p0, Lcom/badlogic/gdx/audio/analysis/ThresholdFunction;->historySize:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 51
    .local v3, "start":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/badlogic/gdx/audio/analysis/ThresholdFunction;->historySize:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 52
    .local v0, "end":I
    move v2, v3

    .local v2, "j":I
    :goto_1
    if-gt v2, v0, :cond_0

    .line 53
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v4, v6

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_0
    sub-int v6, v0, v3

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 55
    iget v6, p0, Lcom/badlogic/gdx/audio/analysis/ThresholdFunction;->multiplier:F

    mul-float/2addr v4, v6

    .line 56
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "end":I
    .end local v2    # "j":I
    .end local v3    # "start":I
    .end local v4    # "sum":F
    :cond_1
    return-object v5
.end method
