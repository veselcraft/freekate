.class public final Lcom/my/target/core/async/commands/j;
.super Lcom/my/target/core/async/commands/a;
.source "StoreAdDataCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/async/commands/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p5}, Lcom/my/target/core/async/commands/a;-><init>(Landroid/content/Context;)V

    .line 38
    iput p3, p0, Lcom/my/target/core/async/commands/j;->e:I

    .line 39
    iput-object p4, p0, Lcom/my/target/core/async/commands/j;->g:Ljava/lang/String;

    .line 40
    iput-wide p1, p0, Lcom/my/target/core/async/commands/j;->f:J

    .line 41
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/my/target/core/async/commands/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()V
    .locals 6

    .prologue
    .line 49
    iget-object v0, p0, Lcom/my/target/core/async/commands/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/my/target/core/utils/d;->a(Landroid/content/Context;)Lcom/my/target/core/utils/d;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/async/commands/j;->c:Ljava/lang/Object;

    .line 54
    const-string v0, "StoreAdDataCommand can\'t open file cache"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v1, p0, Lcom/my/target/core/async/commands/j;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/async/commands/j;->g:Ljava/lang/String;

    iget-wide v4, p0, Lcom/my/target/core/async/commands/j;->f:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/my/target/core/utils/d;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/async/commands/j;->c:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StoreAdDataCommand complete with status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/async/commands/j;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
