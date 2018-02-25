.class public final enum Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;
.super Ljava/lang/Enum;
.source "LinearGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinearGroupLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

.field public static final enum Horizontal:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

.field public static final enum Vertical:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    const-string v1, "Vertical"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;->Vertical:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    const-string v1, "Horizontal"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;->Horizontal:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;->Vertical:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;->Horizontal:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    aput-object v1, v0, v3

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    return-object v0
.end method
