.class public Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
.super Ljava/lang/Object;
.source "ResolutionFileResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolution"
.end annotation


# instance fields
.field portraitHeight:I

.field portraitWidth:I

.field suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "portraitWidth"    # I
    .param p2, "portraitHeight"    # I
    .param p3, "suffix"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    .line 15
    iput p2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    .line 16
    iput-object p3, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->suffix:Ljava/lang/String;

    .line 17
    return-void
.end method
