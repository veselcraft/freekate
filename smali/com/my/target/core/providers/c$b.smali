.class final Lcom/my/target/core/providers/c$b;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/providers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/net/wifi/WifiInfo;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    :try_start_0
    const-string v0, "wifi"

    .line 272
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 273
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/c$b;->a:Landroid/net/wifi/WifiInfo;

    .line 276
    const/16 v1, 0x18

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/my/target/core/providers/c;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/providers/c$b;->b:Ljava/util/List;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/providers/c$b;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/my/target/core/providers/c$b;->b:Ljava/util/List;

    new-instance v1, Lcom/my/target/core/providers/c$b$1;

    invoke-direct {v1, p0}, Lcom/my/target/core/providers/c$b$1;-><init>(Lcom/my/target/core/providers/c$b;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_2
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    const-string v0, "No permissions for access to wifi state"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
