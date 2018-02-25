.class public interface abstract Lcom/sessionm/api/Config;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final ORIENTATION_DYNAMIC:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_LANDSCAPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_PORTRAIT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract enableDebugMode(Z)V
.end method

.method public abstract setActivityOrientation(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
