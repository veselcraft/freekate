.class public Lcom/my/target/core/ui/views/TextViewWithAgeView;
.super Landroid/widget/RelativeLayout;
.source "TextViewWithAgeView.java"


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/my/target/core/utils/l;

.field private final c:Landroid/widget/RelativeLayout$LayoutParams;

.field private final d:Landroid/widget/RelativeLayout$LayoutParams;

.field private final e:Landroid/widget/TextView;

.field private final f:Lcom/my/target/core/ui/views/BorderedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b:Lcom/my/target/core/utils/l;

    .line 28
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    .line 29
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->f:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 31
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->f:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/BorderedTextView;->setSingleLine()V

    .line 34
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 36
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 37
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 38
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->c:Landroid/widget/RelativeLayout$LayoutParams;

    .line 44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    .line 46
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x11

    sget v2, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->f:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->addView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->f:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->addView(Landroid/view/View;)V

    .line 58
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Lcom/my/target/core/ui/views/BorderedTextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->f:Lcom/my/target/core/ui/views/BorderedTextView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 73
    .line 76
    invoke-virtual {p0, v1}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p0, v1}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 80
    :goto_0
    invoke-virtual {p0, v3}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {p0, v3}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 85
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 89
    add-int/2addr v0, v1

    if-le v0, v2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->c:Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b:Lcom/my/target/core/utils/l;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 92
    iget-object v0, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/TextViewWithAgeView;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 97
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
