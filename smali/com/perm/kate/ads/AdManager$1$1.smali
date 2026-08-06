.class Lcom/perm/kate/ads/AdManager$1$1;
.super Ljava/lang/Thread;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ads/AdManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ads/AdManager$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/ads/AdManager$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ads/AdManager$1;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/ads/AdManager$1$1;->this$0:Lcom/perm/kate/ads/AdManager$1;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Lcom/perm/kate/ads/AdManager;->readConfigFromCache()V

    .line 29
    invoke-static {}, Lcom/perm/kate/ads/AdManager;->refreshConfig()V

    .line 30
    return-void
.end method
