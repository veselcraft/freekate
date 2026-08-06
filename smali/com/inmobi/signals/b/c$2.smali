.class final Lcom/inmobi/signals/b/c$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/inmobi/signals/b/c;->b()Lcom/inmobi/signals/b/c$a;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/inmobi/signals/b/c;->d()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 94
    invoke-static {}, Lcom/inmobi/signals/b/c;->c()V

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/signals/b/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/signals/b/c;->a(Ljava/util/List;)Ljava/util/List;

    .line 97
    invoke-static {}, Lcom/inmobi/signals/b/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/inmobi/signals/b/c$a;->a(Ljava/util/List;)V

    .line 99
    :cond_0
    return-void
.end method
