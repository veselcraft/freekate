.class final Lcom/my/target/core/ui/views/fspromo/a$1;
.super Ljava/lang/Object;
.source "FSHeaderAnimationProcessor.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/core/ui/views/fspromo/a;->a(I[Landroid/view/View;)V
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
    .line 108
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/a$1;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 126
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$1;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->d(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$1;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->d(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$1;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->e(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$1;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->a(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$1;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->b(Lcom/my/target/core/ui/views/fspromo/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$1;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->c(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a$1;->a:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/a;->a(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
