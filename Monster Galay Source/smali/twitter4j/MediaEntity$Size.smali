.class public interface abstract Ltwitter4j/MediaEntity$Size;
.super Ljava/lang/Object;
.source "MediaEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/MediaEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Size"
.end annotation


# static fields
.field public static final CROP:I = 0x65

.field public static final FIT:I = 0x64

.field public static final LARGE:Ljava/lang/Integer;

.field public static final MEDIUM:Ljava/lang/Integer;

.field public static final SMALL:Ljava/lang/Integer;

.field public static final THUMB:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    .line 56
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    .line 57
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    .line 58
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getResize()I
.end method

.method public abstract getWidth()I
.end method
