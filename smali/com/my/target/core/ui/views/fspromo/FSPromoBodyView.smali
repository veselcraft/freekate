.class public Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;
.super Landroid/widget/LinearLayout;
.source "FSPromoBodyView.java"


# instance fields
.field protected final a:Landroid/widget/TextView;

.field protected final b:Landroid/widget/TextView;

.field protected final c:Landroid/widget/TextView;

.field protected final d:Landroid/widget/LinearLayout;

.field protected final e:Landroid/widget/TextView;

.field protected final f:Lcom/my/target/nativeads/views/StarsRatingView;

.field protected final g:Landroid/widget/TextView;

.field protected h:Landroid/widget/LinearLayout$LayoutParams;

.field protected i:Landroid/widget/LinearLayout$LayoutParams;

.field protected j:Landroid/widget/LinearLayout$LayoutParams;

.field protected k:Landroid/widget/LinearLayout$LayoutParams;

.field protected l:Landroid/widget/LinearLayout$LayoutParams;

.field protected m:Landroid/widget/LinearLayout$LayoutParams;

.field private final n:Lcom/my/target/core/utils/l;

.field private final o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/my/target/core/utils/l;Z)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->a:Landroid/widget/TextView;

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    .line 48
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->c:Landroid/widget/TextView;

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    .line 51
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->f:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 52
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->g:Landroid/widget/TextView;

    .line 54
    iput-object p2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    .line 55
    iput-boolean p3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->o:Z

    .line 56
    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 60
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->a:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->h:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->h:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 66
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->h:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->h:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->h:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->i:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->i:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->c:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    if-eqz p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 88
    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 91
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->l:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 103
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->l:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 107
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->f:Lcom/my/target/nativeads/views/StarsRatingView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->g:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->g:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->m:Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->m:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 117
    if-eqz p1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->m:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 120
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->m:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 126
    :goto_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->m:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 127
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->m:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->addView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->addView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->addView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->addView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->f:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->h:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 95
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->j:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->m:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 124
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->m:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->n:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3
.end method

.method public setBanner(Lcom/my/target/core/models/banners/g;)V
    .locals 9

    .prologue
    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 141
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->f:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 144
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getVotes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const-string v0, "store"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getSubcategory()Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v0, ""

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getVotes()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    :goto_2
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDisclaimer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :goto_3
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->o:Z

    if-eqz v0, :cond_7

    .line 205
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->a:Landroid/widget/TextView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->c:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 207
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    :goto_4
    return-void

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    const v1, -0xff540e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDisclaimer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 211
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->a:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->e:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoBodyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4
.end method
