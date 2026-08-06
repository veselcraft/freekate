.class public Lcom/my/target/core/async/commands/e;
.super Lcom/my/target/core/async/commands/c;
.source "LoadInstreamAdCommand.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/my/target/core/async/commands/c;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/my/target/core/models/d;Lcom/my/target/core/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/core/async/commands/c;-><init>(Lcom/my/target/core/models/d;Lcom/my/target/core/a;Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;Lcom/my/target/core/models/c;Lcom/my/target/core/async/commands/c$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;",
            "Lcom/my/target/core/models/c;",
            "Lcom/my/target/core/async/commands/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 1074
    :cond_1
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/my/target/core/async/commands/c$a;->a(Ljava/lang/String;)V

    .line 1075
    iget-boolean v1, p3, Lcom/my/target/core/async/commands/c$a;->a:Z

    if-eqz v1, :cond_0

    .line 1077
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->k()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "serviceRequested"

    iget-object v4, p0, Lcom/my/target/core/async/commands/e;->b:Landroid/content/Context;

    invoke-static {v1, v2, v4}, Lcom/my/target/core/async/b;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    .line 1078
    const/4 v2, 0x0

    .line 1079
    iget-object v1, p0, Lcom/my/target/core/async/commands/e;->f:Lcom/my/target/core/a;

    invoke-virtual {v1}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "instreamads"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1080
    const-string v1, "instreamads"

    invoke-virtual {p2, v1}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v2

    .line 1083
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 1084
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/my/target/core/models/sections/i;->b()I

    move-result v1

    .line 1086
    :cond_3
    iget-object v4, p3, Lcom/my/target/core/async/commands/c$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/my/target/core/async/commands/e;->f:Lcom/my/target/core/a;

    iget-object v6, p0, Lcom/my/target/core/async/commands/e;->b:Landroid/content/Context;

    invoke-static {v4, p2, v5, v0, v6}, Lcom/my/target/core/parsers/b;->a(Ljava/lang/String;Lcom/my/target/core/models/c;Lcom/my/target/core/a;Lcom/my/target/core/models/d;Landroid/content/Context;)V

    .line 1087
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->l()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4, p2, p3}, Lcom/my/target/core/async/commands/e;->a(Ljava/util/List;Lcom/my/target/core/models/c;Lcom/my/target/core/async/commands/c$a;)V

    .line 1089
    if-nez v2, :cond_4

    .line 1091
    iget-object v4, p0, Lcom/my/target/core/async/commands/e;->f:Lcom/my/target/core/a;

    invoke-virtual {v4}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "instreamads"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1092
    const-string v2, "instreamads"

    invoke-virtual {p2, v2}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v2

    .line 1096
    :cond_4
    :goto_2
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/my/target/core/models/sections/i;->b()I

    move-result v2

    .line 1097
    :goto_3
    if-ne v1, v2, :cond_0

    .line 1099
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->k()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "serviceAnswerEmpty"

    iget-object v4, p0, Lcom/my/target/core/async/commands/e;->b:Landroid/content/Context;

    invoke-static {v1, v2, v4}, Lcom/my/target/core/async/b;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    .line 1100
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->e()Lcom/my/target/core/models/d;

    move-result-object v0

    .line 1101
    if-nez v0, :cond_1

    goto :goto_0

    .line 1081
    :cond_5
    iget-object v1, p0, Lcom/my/target/core/async/commands/e;->f:Lcom/my/target/core/a;

    invoke-virtual {v1}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "instreamaudioads"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1082
    const-string v1, "instreamaudioads"

    invoke-virtual {p2, v1}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v2

    goto :goto_1

    .line 1093
    :cond_6
    iget-object v4, p0, Lcom/my/target/core/async/commands/e;->f:Lcom/my/target/core/a;

    invoke-virtual {v4}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "instreamaudioads"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1094
    const-string v2, "instreamaudioads"

    invoke-virtual {p2, v2}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v2

    goto :goto_2

    .line 70
    :cond_7
    return-void

    :cond_8
    move v2, v1

    goto :goto_3
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/my/target/core/async/commands/e;->e:Lcom/my/target/core/models/d;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-super {p0}, Lcom/my/target/core/async/commands/c;->c()V

    .line 57
    iget-object v0, p0, Lcom/my/target/core/async/commands/e;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Lcom/my/target/core/async/commands/c$a;

    invoke-direct {v1}, Lcom/my/target/core/async/commands/c$a;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/my/target/core/async/commands/e;->e:Lcom/my/target/core/models/d;

    invoke-virtual {v0}, Lcom/my/target/core/models/d;->l()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/my/target/core/async/commands/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    invoke-virtual {p0, v2, v0, v1}, Lcom/my/target/core/async/commands/e;->a(Ljava/util/List;Lcom/my/target/core/models/c;Lcom/my/target/core/async/commands/c$a;)V

    goto :goto_0
.end method
