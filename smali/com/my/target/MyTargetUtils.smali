.class public Lcom/my/target/MyTargetUtils;
.super Ljava/lang/Object;
.source "MyTargetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/my/target/core/providers/d;->a(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/providers/d;->getData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static sendStat(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/my/target/core/async/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 15
    return-void
.end method
