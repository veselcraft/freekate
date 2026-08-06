.class final Lcom/perm/kate/ads/AdManager$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ads/AdManager;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/perm/kate/ads/AdManager$1$1;

    const-string v1, "AdManagerThread"

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ads/AdManager$1$1;-><init>(Lcom/perm/kate/ads/AdManager$1;Ljava/lang/String;)V

    .line 32
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    return-void
.end method
