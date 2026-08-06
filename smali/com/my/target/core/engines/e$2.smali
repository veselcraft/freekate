.class final Lcom/my/target/core/engines/e$2;
.super Ljava/lang/Object;
.source "FSPromoAdEngine.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 45
    iput-object p1, p0, Lcom/my/target/core/engines/e$2;->a:Lcom/my/target/core/engines/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/my/target/core/engines/e$2;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->c(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/e;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e$2;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/e;->b(Lcom/my/target/core/models/banners/d;)V

    .line 51
    iget-object v0, p0, Lcom/my/target/core/engines/e$2;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->d(Lcom/my/target/core/engines/e;)Lcom/my/target/core/engines/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/my/target/core/engines/e$2;->a:Lcom/my/target/core/engines/e;

    .line 54
    invoke-static {v0}, Lcom/my/target/core/engines/e;->b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/engines/e$2;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/my/target/core/engines/e$2;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->d(Lcom/my/target/core/engines/e;)Lcom/my/target/core/engines/b$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/my/target/core/engines/b$a;->onClick(Z)V

    .line 57
    :cond_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
