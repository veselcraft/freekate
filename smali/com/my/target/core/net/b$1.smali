.class final Lcom/my/target/core/net/b$1;
.super Ljava/lang/Object;
.source "MediaLoader.java"

# interfaces
.implements Lcom/my/target/core/async/commands/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/net/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/my/target/core/async/commands/b$a",
        "<",
        "Lcom/my/target/core/models/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/net/b;


# direct methods
.method constructor <init>(Lcom/my/target/core/net/b;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/my/target/core/net/b$1;->a:Lcom/my/target/core/net/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onExecute(Lcom/my/target/core/async/commands/b;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 81
    check-cast p2, Lcom/my/target/core/models/h;

    .line 1085
    iget-object v0, p0, Lcom/my/target/core/net/b$1;->a:Lcom/my/target/core/net/b;

    invoke-static {v0}, Lcom/my/target/core/net/b;->a(Lcom/my/target/core/net/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/net/b$c;

    .line 1086
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/core/net/b$c;Lcom/my/target/core/models/h;)V

    .line 81
    :cond_0
    return-void
.end method
