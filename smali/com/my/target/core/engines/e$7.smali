.class final Lcom/my/target/core/engines/e$7;
.super Ljava/lang/Object;
.source "FSPromoAdEngine.java"

# interfaces
.implements Lcom/my/target/core/ui/views/video/VideoTextureView$a;


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
    .line 172
    iput-object p1, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b(Z)V

    .line 184
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setTimeChanged(F)V

    .line 221
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->k(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->getStats()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;Ljava/util/ArrayList;)V

    .line 224
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->c(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/e;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/m;

    move-result-object v1

    const-string v2, "playbackStarted"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0, v3}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;F)V

    .line 226
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->l(Lcom/my/target/core/engines/e;)Z

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->g(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->m(Lcom/my/target/core/engines/e;)Z

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->h(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->i(Lcom/my/target/core/engines/e;)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->n(Lcom/my/target/core/engines/e;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    .line 241
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0, p1}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;F)V

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->n(Lcom/my/target/core/engines/e;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->o(Lcom/my/target/core/engines/e;)Z

    .line 246
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->p(Lcom/my/target/core/engines/e;)V

    .line 247
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->c(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/e;->c()V

    .line 248
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->f()V

    .line 251
    :cond_4
    return-void

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->n(Lcom/my/target/core/engines/e;)F

    move-result p1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video playing error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->p(Lcom/my/target/core/engines/e;)V

    .line 258
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()V

    .line 259
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->h(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->i(Lcom/my/target/core/engines/e;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()V

    .line 193
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->j(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->i()V

    .line 208
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
