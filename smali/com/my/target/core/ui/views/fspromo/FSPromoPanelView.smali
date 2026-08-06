.class public Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;
.super Landroid/widget/RelativeLayout;
.source "FSPromoPanelView.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private final f:Landroid/widget/RelativeLayout;

.field private final g:Landroid/widget/TextView;

.field private final h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/LinearLayout;

.field private final k:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/widget/Button;

.field private final o:Lcom/my/target/core/ui/views/CacheImageView;

.field private final p:Lcom/my/target/core/utils/l;

.field private final q:Lcom/my/target/core/ui/views/fspromo/a;

.field private r:Landroid/widget/RelativeLayout$LayoutParams;

.field private s:Landroid/widget/RelativeLayout$LayoutParams;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a:I

    .line 37
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b:I

    .line 38
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c:I

    .line 39
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->d:I

    .line 40
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/my/target/core/utils/l;)V
    .locals 9

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    .line 65
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    .line 66
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->o:Lcom/my/target/core/ui/views/CacheImageView;

    .line 68
    new-instance v0, Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/TextViewWithAgeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    .line 69
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    .line 71
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    .line 72
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    .line 73
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->k:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->l:Landroid/widget/TextView;

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    .line 77
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/a;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->o:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/my/target/core/ui/views/fspromo/a;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->q:Lcom/my/target/core/ui/views/fspromo/a;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/TextViewWithAgeView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/utils/l;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    return-object v0
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Lcom/my/target/core/ui/views/CacheImageView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->o:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/16 v11, 0x10

    const/4 v10, 0x4

    const/4 v2, 0x0

    const/4 v9, -0x2

    .line 84
    .line 85
    add-int v0, p1, p2

    const/16 v3, 0x500

    if-ge v0, v3, :cond_3

    move v0, v1

    .line 88
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->q:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/a;->a()V

    .line 92
    :goto_1
    const/high16 v0, 0x66000000

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setBackgroundColor(I)V

    .line 94
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 96
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    const/16 v3, 0x12

    invoke-static {v3}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const/16 v3, 0x11

    sget v4, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c:I

    invoke-virtual {v0, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 107
    :goto_2
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->e:I

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->setId(I)V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v3, v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->d:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 116
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    const v3, -0x222223

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 118
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    const/4 v3, 0x3

    sget v4, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->e:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    const v3, -0x666667

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    const/4 v3, 0x3

    sget v4, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->e:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 131
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 132
    const v3, -0x333334

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 133
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    const/4 v4, 0x3

    sget v5, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->d:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    iget-object v6, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v6, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v6

    iget-object v7, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    .line 137
    invoke-virtual {v7, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v7

    iget-object v8, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v8, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v8

    .line 136
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    const v4, -0x333334

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/16 v4, 0x34

    .line 146
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 148
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 149
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x15

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 154
    :goto_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    const-string v3, "fspc"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    const/4 v3, 0x3

    sget v4, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->e:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/16 v4, 0x49

    .line 165
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/16 v5, 0xc

    .line 166
    invoke-virtual {v4, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 168
    const/16 v3, 0x30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 169
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->k:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v3, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 175
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->l:Landroid/widget/TextView;

    const v4, -0x666667

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->l:Landroid/widget/TextView;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->l:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->o:Lcom/my/target/core/ui/views/CacheImageView;

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a:I

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/CacheImageView;->setId(I)V

    .line 181
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->o:Lcom/my/target/core/ui/views/CacheImageView;

    const-string v3, "fspi"

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/CacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 187
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    .line 188
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 189
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 190
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 191
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    const/4 v3, 0x2

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 192
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 193
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 194
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 196
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b()Lcom/my/target/core/ui/views/BorderedTextView;

    move-result-object v0

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b:I

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/BorderedTextView;->setId(I)V

    .line 197
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b()Lcom/my/target/core/ui/views/BorderedTextView;

    move-result-object v0

    const v3, -0x777778

    invoke-virtual {v0, v1, v3}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 198
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b()Lcom/my/target/core/ui/views/BorderedTextView;

    move-result-object v0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 199
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b()Lcom/my/target/core/ui/views/BorderedTextView;

    move-result-object v0

    const v2, -0x111112

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b()Lcom/my/target/core/ui/views/BorderedTextView;

    move-result-object v0

    const v2, -0x111112

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/4 v4, 0x3

    .line 201
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(III)V

    .line 202
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b()Lcom/my/target/core/ui/views/BorderedTextView;

    move-result-object v0

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 204
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->k:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->addView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->o:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->addView(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->addView(Landroid/view/View;)V

    .line 219
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->q:Lcom/my/target/core/ui/views/fspromo/a;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/fspromo/a;->a(I)V

    goto/16 :goto_1

    .line 104
    :cond_1
    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->q:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/a;->c([Landroid/view/View;)V

    .line 364
    :cond_0
    return-void
.end method

.method final varargs b([Landroid/view/View;)V
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->q:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/a;->a([Landroid/view/View;)V

    .line 370
    :cond_0
    return-void
.end method

.method final varargs c([Landroid/view/View;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->q:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/a;->b([Landroid/view/View;)V

    .line 375
    return-void
.end method

.method public setBanner(Lcom/my/target/core/models/banners/g;)V
    .locals 8

    .prologue
    const/16 v4, 0x40

    const/4 v1, 0x0

    const/16 v7, 0x8

    .line 223
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->t:Z

    .line 225
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->k:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getRating()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 226
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getVotes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDisclaimer()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->o:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getCtaText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 246
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v2

    .line 247
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v0

    .line 249
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 251
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 253
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 254
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 259
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 264
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->o:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 267
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b()Lcom/my/target/core/ui/views/BorderedTextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_2
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->f()I

    move-result v0

    .line 271
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->g()I

    move-result v2

    .line 272
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->h()I

    move-result v3

    .line 274
    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->p:Lcom/my/target/core/utils/l;

    const/4 v6, 0x2

    .line 277
    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 274
    invoke-static {v4, v0, v2, v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;III)V

    .line 278
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 280
    const-string v0, "store"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getNavigationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 282
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getVotes()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getRating()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 284
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    :goto_3
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1308
    :cond_4
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView$1;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;)V

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->r:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 268
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->h:Lcom/my/target/core/ui/views/TextViewWithAgeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/TextViewWithAgeView;->b()Lcom/my/target/core/ui/views/BorderedTextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    goto :goto_2

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->q:Lcom/my/target/core/ui/views/fspromo/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/a;->b()V

    goto :goto_3

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method

.method public setOnCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->n:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->t:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
