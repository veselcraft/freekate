.class public final Lcom/my/target/core/async/b;
.super Ljava/lang/Object;
.source "Sender.java"


# direct methods
.method public static a(Lcom/my/target/core/models/k;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    instance-of v0, p0, Lcom/my/target/core/models/i;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/my/target/core/models/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lcom/my/target/core/models/i;

    invoke-virtual {p0}, Lcom/my/target/core/models/i;->a()F

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/my/target/core/async/b;->a(Ljava/lang/String;Ljava/lang/String;FLandroid/content/Context;)V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/models/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, p1}, Lcom/my/target/core/async/b;->a(Ljava/lang/String;Ljava/lang/String;FLandroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {p0, v0, v1, p1}, Lcom/my/target/core/async/b;->a(Ljava/lang/String;Ljava/lang/String;FLandroid/content/Context;)V

    .line 55
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;FLandroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 44
    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add stat type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p3}, Lcom/my/target/core/factories/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V

    .line 50
    :goto_2
    return-void

    .line 42
    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid stat url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static a(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/my/target/core/async/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 68
    invoke-virtual {v0}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/my/target/core/models/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v0, v3, p2}, Lcom/my/target/core/async/b;->a(Ljava/lang/String;Ljava/lang/String;FLandroid/content/Context;)V

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method
