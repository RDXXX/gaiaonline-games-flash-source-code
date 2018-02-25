.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructGroupReq;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final gr_group:Ljava/net/InetAddress;

.field public final gr_interface:I


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructGroupReq;->gr_interface:I

    .line 30
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructGroupReq[gr_interface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructGroupReq;->gr_interface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",gr_group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
