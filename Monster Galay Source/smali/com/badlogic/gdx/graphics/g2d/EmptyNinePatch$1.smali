.class final Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch$1;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "EmptyNinePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->getInstance()Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    return-void
.end method


# virtual methods
.method public getRegionHeight()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getRegionWidth()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
