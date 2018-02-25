.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColorValue"
.end annotation


# static fields
.field private static temp:[F


# instance fields
.field private colors:[F

.field timeline:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1149
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    .line 1146
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1147
    new-array v0, v3, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1150
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->alwaysActive:Z

    .line 1151
    return-void

    .line 1146
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getColor(F)[F
    .locals 15
    .param p1, "percent"    # F

    .prologue
    .line 1170
    const/4 v7, 0x0

    .local v7, "startIndex":I
    const/4 v1, -0x1

    .line 1171
    .local v1, "endIndex":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1172
    .local v10, "timeline":[F
    array-length v5, v10

    .line 1173
    .local v5, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 1174
    aget v9, v10, v4

    .line 1175
    .local v9, "t":F
    cmpl-float v11, v9, p1

    if-lez v11, :cond_1

    .line 1176
    move v1, v4

    .line 1181
    .end local v9    # "t":F
    :cond_0
    aget v8, v10, v7

    .line 1182
    .local v8, "startTime":F
    mul-int/lit8 v7, v7, 0x3

    .line 1183
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    aget v6, v11, v7

    .line 1184
    .local v6, "r1":F
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    add-int/lit8 v12, v7, 0x1

    aget v3, v11, v12

    .line 1185
    .local v3, "g1":F
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    add-int/lit8 v12, v7, 0x2

    aget v0, v11, v12

    .line 1186
    .local v0, "b1":F
    const/4 v11, -0x1

    if-ne v1, v11, :cond_2

    .line 1187
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    const/4 v12, 0x0

    aput v6, v11, v12

    .line 1188
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    const/4 v12, 0x1

    aput v3, v11, v12

    .line 1189
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    const/4 v12, 0x2

    aput v0, v11, v12

    .line 1190
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    .line 1197
    :goto_1
    return-object v11

    .line 1179
    .end local v0    # "b1":F
    .end local v3    # "g1":F
    .end local v6    # "r1":F
    .end local v8    # "startTime":F
    .restart local v9    # "t":F
    :cond_1
    move v7, v4

    .line 1173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1192
    .end local v9    # "t":F
    .restart local v0    # "b1":F
    .restart local v3    # "g1":F
    .restart local v6    # "r1":F
    .restart local v8    # "startTime":F
    :cond_2
    sub-float v11, p1, v8

    aget v12, v10, v1

    sub-float/2addr v12, v8

    div-float v2, v11, v12

    .line 1193
    .local v2, "factor":F
    mul-int/lit8 v1, v1, 0x3

    .line 1194
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    aget v13, v13, v1

    sub-float/2addr v13, v6

    mul-float/2addr v13, v2

    add-float/2addr v13, v6

    aput v13, v11, v12

    .line 1195
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    add-int/lit8 v14, v1, 0x1

    aget v13, v13, v14

    sub-float/2addr v13, v3

    mul-float/2addr v13, v2

    add-float/2addr v13, v3

    aput v13, v11, v12

    .line 1196
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    add-int/lit8 v14, v1, 0x2

    aget v13, v13, v14

    sub-float/2addr v13, v0

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 1197
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    goto :goto_1
.end method

.method public getColors()[F
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;)V
    .locals 4
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    .prologue
    const/4 v3, 0x0

    .line 1223
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    .line 1224
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1225
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1226
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1227
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1228
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    .line 1213
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->active:Z

    if-nez v1, :cond_1

    .line 1220
    :cond_0
    return-void

    .line 1214
    :cond_1
    const-string v1, "colorsCount"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1216
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "colors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    :cond_2
    const-string v1, "timelineCount"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1218
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public save(Ljava/io/Writer;)V
    .locals 3
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    .line 1202
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->active:Z

    if-nez v1, :cond_1

    .line 1209
    :cond_0
    return-void

    .line 1203
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorsCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timelineCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1207
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setColors([F)V
    .locals 0
    .param p1, "colors"    # [F

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1167
    return-void
.end method

.method public setTimeline([F)V
    .locals 0
    .param p1, "timeline"    # [F

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1159
    return-void
.end method
