.class Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1$1;
.super Ljava/lang/Object;
.source "MonsterGalaxyAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;

.field private final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;

    iput p2, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1$1;->val$which:I

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1$1;->val$which:I

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->autoPlay(I)V

    .line 178
    return-void
.end method
