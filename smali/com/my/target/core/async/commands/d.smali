.class public final Lcom/my/target/core/async/commands/d;
.super Lcom/my/target/core/async/commands/c;
.source "LoadAppwallAdCommand.java"


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/d;Lcom/my/target/core/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/core/async/commands/c;-><init>(Lcom/my/target/core/models/d;Lcom/my/target/core/a;Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 5

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/async/commands/d;->f:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/my/target/core/async/commands/d;->b:Landroid/content/Context;

    .line 1063
    const-string v0, "LoadAppwallAdCommand allowed to check cache record"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1065
    const/4 v0, 0x0

    .line 1066
    invoke-static {v1}, Lcom/my/target/core/utils/d;->a(Landroid/content/Context;)Lcom/my/target/core/utils/d;

    move-result-object v1

    .line 1068
    if-eqz v1, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/my/target/core/async/commands/d;->f:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/core/async/commands/d;->f:Lcom/my/target/core/a;

    invoke-virtual {v2}, Lcom/my/target/core/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/core/utils/d;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 48
    :goto_0
    if-eqz v1, :cond_0

    .line 50
    const-string v0, "Cache value retrieved successfully"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/core/async/commands/d;->f:Lcom/my/target/core/a;

    invoke-virtual {v2}, Lcom/my/target/core/a;->a()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/my/target/core/models/c;-><init>(J)V

    iput-object v0, p0, Lcom/my/target/core/async/commands/d;->c:Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/my/target/core/async/commands/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/core/async/commands/d;->e:Lcom/my/target/core/models/d;

    invoke-virtual {v2}, Lcom/my/target/core/models/d;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/c;->a(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/my/target/core/async/commands/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/core/async/commands/d;->f:Lcom/my/target/core/a;

    iget-object v3, p0, Lcom/my/target/core/async/commands/d;->e:Lcom/my/target/core/models/d;

    iget-object v4, p0, Lcom/my/target/core/async/commands/d;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/my/target/core/parsers/b;->a(Ljava/lang/String;Lcom/my/target/core/models/c;Lcom/my/target/core/a;Lcom/my/target/core/models/d;Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/my/target/core/async/commands/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    invoke-virtual {v0}, Lcom/my/target/core/models/c;->i()V

    .line 59
    :goto_1
    return-void

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/my/target/core/async/commands/c;->c()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
