.class final Lcom/my/target/core/ui/views/fspromo/a$2;
.super Ljava/lang/Object;
.source "FSHeaderAnimationProcessor.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/fspromo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/fspromo/a;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/fspromo/a;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/a$2;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 195
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$2;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->c(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$2;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->a(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$2;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->d(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$2;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->d(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$2;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->e(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    return-void
.end method
