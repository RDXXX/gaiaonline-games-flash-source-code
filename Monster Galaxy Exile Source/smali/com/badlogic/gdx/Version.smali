.class public Lcom/badlogic/gdx/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "0.9.2"

    sput-object v0, Lcom/badlogic/gdx/Version;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
