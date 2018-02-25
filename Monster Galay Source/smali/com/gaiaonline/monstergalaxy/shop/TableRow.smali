.class public Lcom/gaiaonline/monstergalaxy/shop/TableRow;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;"
    }
.end annotation


# static fields
.field public static final CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected listener:Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x43ca0000    # 404.0f

    const/high16 v2, 0x42700000    # 60.0f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/shop/TableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/shop/TableRow;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/TableRow;->data:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/shop/TableRow;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow<TT;>;"
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/shop/TableRow;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getSize()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/shop/TableRow;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow<TT;>;"
    sget-object v0, Lcom/gaiaonline/monstergalaxy/shop/TableRow;->CELL_SIZE:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public setListener(Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/shop/TableRow;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow<TT;>;"
    .local p1, "listener":Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;, "Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener<TT;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/shop/TableRow;->listener:Lcom/gaiaonline/monstergalaxy/shop/TableRow$Listener;

    .line 27
    return-void
.end method
