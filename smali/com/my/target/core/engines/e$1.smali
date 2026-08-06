.class final Lcom/my/target/core/engines/e$1;
.super Ljava/lang/Object;
.source "FSPromoAdEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/e;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/e;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/my/target/core/engines/e$1;->a:Lcom/my/target/core/engines/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/my/target/core/engines/e$1;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "banner became just closeable"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/my/target/core/engines/e$1;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()V

    .line 40
    :cond_0
    return-void
.end method
