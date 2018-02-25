.class public final enum Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;
.super Ljava/lang/Enum;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

.field public static final enum Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

.field public static final enum Loop:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

.field public static final enum SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    const-string v1, "Loop"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Loop:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    const-string v1, "Clamp"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    const-string v1, "SingleFrame"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Loop:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    return-object v0
.end method
