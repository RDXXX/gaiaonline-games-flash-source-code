.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructPasswd;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public pw_dir:Ljava/lang/String;

.field public pw_gid:I

.field public pw_name:Ljava/lang/String;

.field public pw_shell:Ljava/lang/String;

.field public pw_uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructPasswd;->pw_name:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructPasswd;->pw_uid:I

    .line 34
    iput p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructPasswd;->pw_gid:I

    .line 35
    iput-object p4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructPasswd;->pw_dir:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructPasswd;->pw_shell:Ljava/lang/String;

    .line 37
    return-void
.end method
