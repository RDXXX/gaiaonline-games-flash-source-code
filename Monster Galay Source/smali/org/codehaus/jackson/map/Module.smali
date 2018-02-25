.class public abstract Lorg/codehaus/jackson/map/Module;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/Module$SetupContext;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract setupModule(Lorg/codehaus/jackson/map/Module$SetupContext;)V
.end method

.method public abstract version()Lorg/codehaus/jackson/Version;
.end method
