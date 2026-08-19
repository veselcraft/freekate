.class Lcom/perm/kate/MainActivity$3;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->vkBlockCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 239
    invoke-static {}, Lcom/perm/utils/UkrBlockChecker;->check()I

    move-result v0

    .line 241
    invoke-static {v0}, Lcom/perm/utils/ProxyManager;->setProxyTypeByCheckResult(I)V

    return-void
.end method
