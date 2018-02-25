.class Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;
.super Ljava/lang/Object;
.source "ScrollInputProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VelocityTracker"
.end annotation


# instance fields
.field deltaX:I

.field deltaY:I

.field lastTime:J

.field lastX:I

.field lastY:I

.field meanTime:[J

.field meanX:[F

.field meanY:[F

.field numSamples:I

.field sampleSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/16 v0, 0xa

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->sampleSize:I

    .line 137
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->sampleSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanX:[F

    .line 138
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->sampleSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanY:[F

    .line 139
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->sampleSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanTime:[J

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;-><init>()V

    return-void
.end method

.method private getAverage([FI)F
    .locals 3
    .param p1, "values"    # [F
    .param p2, "numSamples"    # I

    .prologue
    .line 185
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->sampleSize:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 190
    int-to-float v2, p2

    div-float v2, v1, v2

    return v2

    .line 188
    :cond_0
    aget v2, p1, v0

    add-float/2addr v1, v2

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAverage([JI)J
    .locals 5
    .param p1, "values"    # [J
    .param p2, "numSamples"    # I

    .prologue
    .line 194
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->sampleSize:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 195
    const-wide/16 v1, 0x0

    .line 196
    .local v1, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 199
    if-nez p2, :cond_1

    const-wide/16 v3, 0x0

    .line 200
    :goto_1
    return-wide v3

    .line 197
    :cond_0
    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    int-to-long v3, p2

    div-long v3, v1, v3

    goto :goto_1
.end method


# virtual methods
.method public getVelocityX()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanX:[F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->numSamples:I

    invoke-direct {p0, v3, v4}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->getAverage([FI)F

    move-result v1

    .line 172
    .local v1, "meanX":F
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanTime:[J

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->numSamples:I

    invoke-direct {p0, v3, v4}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->getAverage([JI)J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float v0, v3, v4

    .line 173
    .local v0, "meanTime":F
    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    .line 174
    :goto_0
    return v2

    :cond_0
    div-float v2, v1, v0

    goto :goto_0
.end method

.method public getVelocityY()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanY:[F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->numSamples:I

    invoke-direct {p0, v3, v4}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->getAverage([FI)F

    move-result v1

    .line 179
    .local v1, "meanY":F
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanTime:[J

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->numSamples:I

    invoke-direct {p0, v3, v4}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->getAverage([JI)J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float v0, v3, v4

    .line 180
    .local v0, "meanTime":F
    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    .line 181
    :goto_0
    return v2

    :cond_0
    div-float v2, v1, v0

    goto :goto_0
.end method

.method public start(IIJ)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeStamp"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 142
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastX:I

    .line 143
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastY:I

    .line 144
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->deltaX:I

    .line 145
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->deltaY:I

    .line 146
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->numSamples:I

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->sampleSize:I

    if-lt v0, v1, :cond_0

    .line 152
    iput-wide p3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastTime:J

    .line 153
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanX:[F

    aput v4, v1, v0

    .line 149
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanY:[F

    aput v4, v1, v0

    .line 150
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanTime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update(IIJ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeStamp"    # J

    .prologue
    .line 156
    move-wide v0, p3

    .line 157
    .local v0, "currTime":J
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastX:I

    sub-int v5, p1, v5

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->deltaX:I

    .line 158
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastY:I

    sub-int v5, p2, v5

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->deltaY:I

    .line 159
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastX:I

    .line 160
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastY:I

    .line 161
    iget-wide v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastTime:J

    sub-long v2, v0, v5

    .line 162
    .local v2, "deltaTime":J
    iput-wide v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastTime:J

    .line 163
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->numSamples:I

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->sampleSize:I

    rem-int v4, v5, v6

    .line 164
    .local v4, "index":I
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanX:[F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->deltaX:I

    int-to-float v6, v6

    aput v6, v5, v4

    .line 165
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanY:[F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->deltaY:I

    int-to-float v6, v6

    aput v6, v5, v4

    .line 166
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->meanTime:[J

    aput-wide v2, v5, v4

    .line 167
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->numSamples:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->numSamples:I

    .line 168
    return-void
.end method
