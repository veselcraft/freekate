.class final Lcom/my/target/core/engines/e$3;
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
    .line 63
    iput-object p1, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->e(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    invoke-virtual {v0}, Lcom/my/target/core/engines/e;->i()V

    .line 70
    iget-object v0, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->c(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/e;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/m;

    move-result-object v1

    const-string v2, "volumeOff"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;Z)Z

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    invoke-virtual {v0}, Lcom/my/target/core/engines/e;->j()V

    .line 75
    iget-object v0, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->c(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/e;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/m;

    move-result-object v1

    const-string v2, "volumeOn"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/my/target/core/engines/e$3;->a:Lcom/my/target/core/engines/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;Z)Z

    goto :goto_0
.end method
