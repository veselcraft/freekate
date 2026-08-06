.class final Lcom/my/target/core/engines/e$6;
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
    .line 147
    iput-object p1, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    iget-object v1, v1, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/engines/e;->b(Lcom/my/target/core/engines/e;Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(Z)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->g(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->c(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/e;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/m;

    move-result-object v1

    const-string v2, "closedByUser"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->d(Lcom/my/target/core/engines/e;)Lcom/my/target/core/engines/b$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/my/target/core/engines/e$6;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->d(Lcom/my/target/core/engines/e;)Lcom/my/target/core/engines/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/engines/b$a;->onCloseClick()V

    .line 164
    :cond_2
    return-void
.end method
