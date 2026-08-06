.class public final Lcom/my/target/core/async/commands/g;
.super Lcom/my/target/core/async/commands/e;
.source "LoadVideoServiceCommand.java"


# instance fields
.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/c;Ljava/util/ArrayList;Lcom/my/target/core/a;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/c;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;",
            "Lcom/my/target/core/a;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p4}, Lcom/my/target/core/async/commands/e;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/my/target/core/async/commands/g;->c:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lcom/my/target/core/async/commands/g;->g:Ljava/util/ArrayList;

    .line 22
    iput-object p3, p0, Lcom/my/target/core/async/commands/g;->f:Lcom/my/target/core/a;

    .line 23
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 3

    .prologue
    .line 28
    new-instance v1, Lcom/my/target/core/async/commands/c$a;

    invoke-direct {v1}, Lcom/my/target/core/async/commands/c$a;-><init>()V

    .line 29
    iget-object v2, p0, Lcom/my/target/core/async/commands/g;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/my/target/core/async/commands/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    invoke-virtual {p0, v2, v0, v1}, Lcom/my/target/core/async/commands/g;->a(Ljava/util/List;Lcom/my/target/core/models/c;Lcom/my/target/core/async/commands/c$a;)V

    .line 30
    return-void
.end method
