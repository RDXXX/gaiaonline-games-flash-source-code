.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructUtsname;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final machine:Ljava/lang/String;

.field public final nodename:Ljava/lang/String;

.field public final release:Ljava/lang/String;

.field public final sysname:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructUtsname;->sysname:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructUtsname;->nodename:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructUtsname;->release:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructUtsname;->version:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/StructUtsname;->machine:Ljava/lang/String;

    .line 46
    return-void
.end method
