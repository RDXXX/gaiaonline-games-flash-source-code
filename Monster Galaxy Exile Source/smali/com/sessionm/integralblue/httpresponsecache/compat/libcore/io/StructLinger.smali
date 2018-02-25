.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructLinger;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final l_linger:I

.field public final l_onoff:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructLinger;->l_onoff:I

    .line 32
    iput p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructLinger;->l_linger:I

    .line 33
    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructLinger;->l_onoff:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructLinger[l_onoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructLinger;->l_onoff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",l_linger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructLinger;->l_linger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
