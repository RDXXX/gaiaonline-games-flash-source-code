.class public final enum Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;
.super Ljava/lang/Enum;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

.field public static final enum BOTTOM:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

.field public static final enum CENTER:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

.field public static final enum TOP:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->TOP:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->CENTER:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->BOTTOM:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->TOP:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->CENTER:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->BOTTOM:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

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
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    return-object v0
.end method
