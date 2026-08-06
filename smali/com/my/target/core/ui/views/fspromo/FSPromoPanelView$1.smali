.class final Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;
.super Ljava/lang/Object;
.source "FSPromoPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 313
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    .line 316
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/TextViewWithAgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    .line 319
    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/TextViewWithAgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/TextViewWithAgeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 322
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/TextViewWithAgeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    .line 324
    if-eqz v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/utils/l;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->b(I)I

    move-result v2

    int-to-float v2, v2

    .line 328
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/TextViewWithAgeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 331
    cmpg-float v1, v2, v0

    if-gez v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/TextViewWithAgeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a()Landroid/widget/TextView;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/utils/l;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 339
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/utils/l;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 340
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->d(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->e(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/utils/l;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 342
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->e(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/utils/l;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    .line 346
    invoke-static {v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/utils/l;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    .line 344
    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 348
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/TextViewWithAgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    .line 349
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 351
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0
.end method
