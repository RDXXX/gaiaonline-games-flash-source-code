.class public Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;
.super Lcom/badlogic/gdx/graphics/g2d/NinePatch;
.source "EmptyNinePatch.java"


# static fields
.field private static emptyPatches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static instance:Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

.field private static region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->emptyPatches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 28
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->instance:Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    if-nez v1, :cond_0

    .line 30
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v4, v4, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 31
    .local v0, "texture":Lcom/badlogic/gdx/graphics/Texture;
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch$1;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch$1;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 40
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v3, v1, v2

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v3, v1, v2

    sput-object v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->emptyPatches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 45
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;-><init>()V

    sput-object v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->instance:Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    .line 47
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->instance:Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    return-object v1
.end method

.method public static getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->getInstance()Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;

    .line 52
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/EmptyNinePatch;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 60
    return-void
.end method
