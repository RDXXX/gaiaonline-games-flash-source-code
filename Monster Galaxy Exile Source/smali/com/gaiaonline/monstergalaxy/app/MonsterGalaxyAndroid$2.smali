.class Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$2;
.super Ljava/lang/Object;
.source "MonsterGalaxyAndroid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

.field private final synthetic val$snapshots:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$2;->this$0:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$2;->val$snapshots:[Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$2;->val$snapshots:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->snapshotPicked(Ljava/lang/String;)V

    .line 196
    return-void
.end method
