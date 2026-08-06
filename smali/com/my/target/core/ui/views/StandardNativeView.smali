.class public Lcom/my/target/core/ui/views/StandardNativeView;
.super Landroid/widget/RelativeLayout;
.source "StandardNativeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/StandardNativeView$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private final a:Lcom/my/target/core/ui/views/BorderedTextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/LinearLayout;

.field private final f:Landroid/widget/Button;

.field private final g:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final h:Lcom/my/target/core/ui/views/CacheImageView;

.field private final i:Landroid/widget/RelativeLayout;

.field private final j:Landroid/widget/RelativeLayout;

.field private final k:Landroid/widget/ViewFlipper;

.field private final l:Lcom/my/target/core/utils/l;

.field private final m:I

.field private final n:Landroid/widget/FrameLayout;

.field private final o:Ljava/lang/Runnable;

.field private final p:Ljava/lang/Runnable;

.field private final q:Landroid/view/View$OnClickListener;

.field private final r:Ljava/lang/Runnable;

.field private s:Lcom/my/target/core/ui/views/StandardNativeView$a;

.field private t:Lcom/my/target/core/engines/i;

.field private u:Ljava/lang/String;

.field private v:Lcom/my/target/core/models/banners/j;

.field private w:I

.field private x:I

.field private y:Lcom/my/target/core/models/j;

.field private z:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/my/target/core/ui/views/StandardNativeView;-><init>(ILjava/lang/String;Landroid/content/Context;B)V

    .line 271
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Landroid/content/Context;B)V
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/my/target/core/ui/views/StandardNativeView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/StandardNativeView$1;-><init>(Lcom/my/target/core/ui/views/StandardNativeView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/my/target/core/ui/views/StandardNativeView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/StandardNativeView$2;-><init>(Lcom/my/target/core/ui/views/StandardNativeView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/my/target/core/ui/views/StandardNativeView$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/StandardNativeView$3;-><init>(Lcom/my/target/core/ui/views/StandardNativeView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/my/target/core/ui/views/StandardNativeView$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/StandardNativeView$4;-><init>(Lcom/my/target/core/ui/views/StandardNativeView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Ljava/lang/Runnable;

    .line 124
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->w:I

    .line 278
    iput p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    .line 279
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p3}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    .line 281
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p3}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    .line 282
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/FrameLayout;

    .line 283
    new-instance v0, Landroid/widget/ViewFlipper;

    invoke-direct {v0, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    .line 284
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/LinearLayout;

    .line 285
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    .line 286
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    .line 287
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-direct {v0, p3}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 288
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p3}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 289
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    .line 290
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    .line 291
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Landroid/widget/RelativeLayout;

    .line 292
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Landroid/widget/RelativeLayout;

    .line 294
    const-string v0, "standard_728x90"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/16 v0, 0x14

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:I

    .line 297
    const/16 v0, 0x18

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->C:I

    .line 298
    const/16 v0, 0x20

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->B:I

    .line 299
    const/16 v0, 0x10

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->D:I

    .line 300
    const/16 v0, 0x92

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->E:I

    .line 301
    const/16 v0, 0x18

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->F:I

    .line 302
    const/16 v0, 0x18

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->G:I

    .line 303
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->H:I

    .line 304
    mul-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->I:I

    .line 317
    :goto_0
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->A:F

    .line 2510
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setId(I)V

    .line 2511
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2513
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 2514
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 2517
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 2518
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->B:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2519
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 2520
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2521
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2522
    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2523
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2525
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2527
    const/4 v1, 0x0

    const/16 v2, 0x193

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2528
    const/16 v1, 0x191

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2529
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2530
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-static {}, Lcom/my/target/core/utils/b;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 2531
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-static {}, Lcom/my/target/core/utils/b;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 2533
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2535
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2537
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2540
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2541
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 2543
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 2544
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2545
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 2546
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2547
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 2548
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->C:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2549
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2551
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2553
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2554
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2555
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2556
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2558
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2560
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setId(I)V

    .line 2561
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    const v1, -0x777778

    invoke-virtual {v0, v7, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 2562
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setGravity(I)V

    .line 2563
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->D:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextSize(IF)V

    .line 2564
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 2565
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v7}, Lcom/my/target/core/ui/views/BorderedTextView;->setLines(I)V

    .line 2566
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2568
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2569
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2570
    const/16 v1, 0x192

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2571
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2573
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2575
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2577
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Lcom/my/target/nativeads/views/StarsRatingView;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setId(I)V

    .line 2578
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->E:I

    .line 2579
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    iget v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->F:I

    .line 2580
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2581
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2582
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2583
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2584
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2585
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2587
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2589
    const/16 v1, 0x194

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2590
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2591
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->G:I

    int-to-float v2, v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2592
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2594
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2597
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2598
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->G:I

    int-to-float v2, v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2599
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2601
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2603
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2605
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2607
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->addView(Landroid/view/View;)V

    .line 2608
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->addView(Landroid/view/View;)V

    .line 2609
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->addView(Landroid/view/View;)V

    .line 2611
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2612
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2613
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2615
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2616
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2617
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2618
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2620
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 2622
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->addView(Landroid/view/View;)V

    .line 320
    return-void

    .line 307
    :cond_0
    iput v10, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:I

    .line 308
    const/16 v0, 0x10

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->C:I

    .line 309
    const/16 v0, 0x14

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->B:I

    .line 310
    const/16 v0, 0xa

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->D:I

    .line 311
    const/16 v0, 0x49

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->E:I

    .line 312
    const/16 v0, 0xc

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->F:I

    .line 313
    const/16 v0, 0x10

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->G:I

    .line 314
    iput p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->H:I

    .line 315
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->I:I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method private static a(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 482
    const-string v0, "\\s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 483
    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v0, v4, v1

    .line 485
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v6, v6, p1

    if-gez v6, :cond_1

    .line 487
    invoke-static {p1, p2, v2, v3, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(FLandroid/graphics/Paint;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 483
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 491
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/my/target/core/ui/views/StandardNativeView;->b(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/util/List;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 494
    invoke-static {p1, p2, v2, v3, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(FLandroid/graphics/Paint;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 501
    const-string v0, " "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_3
    return-object v2
.end method

.method private static a(FLandroid/graphics/Paint;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/graphics/Paint;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    const-string v0, " "

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, p0

    if-ltz v0, :cond_0

    .line 672
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 673
    const-string v0, " "

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 676
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/16 v8, 0x10

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 365
    if-nez p1, :cond_2

    .line 367
    iget v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->w:I

    if-lez v0, :cond_1

    .line 369
    iget v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->w:I

    .line 370
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v0, "failed to get banner width, unable to draw description and disclaimer properly"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/models/banners/j;

    if-nez v0, :cond_3

    .line 383
    const-string v0, "unable to draw description and disclaimer: no current banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/models/banners/j;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 389
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    iget v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:I

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 392
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    invoke-virtual {v1}, Lcom/my/target/core/models/j;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 393
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 396
    :goto_1
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/models/banners/j;

    .line 397
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/j;->c()Ljava/lang/String;

    move-result-object v1

    int-to-float v3, p1

    invoke-static {v1, v3, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/util/List;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v7, :cond_5

    .line 405
    :cond_4
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    invoke-direct {v4, v10, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 407
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 408
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 409
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 410
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 414
    :cond_5
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 415
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 416
    const/4 v5, 0x2

    iget v6, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    iget v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->A:F

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 419
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 421
    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    if-eqz v5, :cond_6

    .line 422
    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    invoke-virtual {v5}, Lcom/my/target/core/models/j;->n()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    :cond_6
    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    invoke-virtual {v5}, Lcom/my/target/core/models/j;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 424
    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 426
    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 394
    :cond_7
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 425
    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    :cond_9
    move-object v1, v2

    .line 431
    :cond_a
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/models/banners/j;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 434
    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    iget v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:I

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 436
    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    invoke-virtual {v3}, Lcom/my/target/core/models/j;->f()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 437
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 440
    :goto_4
    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/models/banners/j;

    .line 441
    invoke-virtual {v3}, Lcom/my/target/core/models/banners/j;->d()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, p1

    invoke-static {v3, v4, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v7, :cond_c

    .line 449
    :cond_b
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    invoke-direct {v4, v10, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 451
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 452
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 453
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 454
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 458
    :cond_c
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 459
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 460
    iget v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->A:F

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 461
    const/4 v5, 0x2

    iget v6, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 463
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 465
    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    if-eqz v5, :cond_d

    .line 466
    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    invoke-virtual {v5}, Lcom/my/target/core/models/j;->q()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    :cond_d
    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    invoke-virtual {v5}, Lcom/my/target/core/models/j;->f()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 468
    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 470
    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 438
    :cond_e
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 469
    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_6
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/StandardNativeView;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/my/target/core/ui/views/StandardNativeView;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/BorderedTextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    return-object v0
.end method

.method private static b(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    .line 633
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 655
    :goto_0
    return-object v0

    .line 636
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 637
    const/4 v1, 0x0

    .line 638
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_4

    .line 640
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_2

    .line 644
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    add-int/lit8 v1, v0, -0x1

    .line 648
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 650
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 655
    goto :goto_0
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/utils/l;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 683
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v0, v2, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    return-void
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/StandardNativeView$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:Lcom/my/target/core/ui/views/StandardNativeView$a;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/ui/views/StandardNativeView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/engines/i;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->t:Lcom/my/target/core/engines/i;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/ui/views/StandardNativeView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->u:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    if-eqz p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 340
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 341
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 343
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 345
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 348
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->c()V

    .line 354
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 325
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2688
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2690
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 2692
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    goto :goto_0

    .line 2697
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/models/banners/j;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->x:I

    invoke-virtual {p0, v0, v1}, Lcom/my/target/core/ui/views/StandardNativeView;->setBanner(Lcom/my/target/core/models/banners/j;I)V

    .line 2698
    invoke-direct {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->c()V

    .line 361
    return-void
.end method

.method public setBanner(Lcom/my/target/core/models/banners/j;I)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, -0x2

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 145
    iput p2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->x:I

    .line 147
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->u:Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/models/banners/j;

    .line 151
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getNavigationType()Ljava/lang/String;

    move-result-object v0

    .line 1207
    const-string v2, "store"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v5}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 154
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 156
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->g()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 160
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    .line 162
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u279c"

    .line 161
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v5}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_2
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->f()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->f()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->f()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 177
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 181
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getType()Ljava/lang/String;

    move-result-object v3

    .line 1704
    const-string v4, "teaser"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1706
    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1707
    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v5}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 1709
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 1711
    int-to-float v0, v0

    int-to-float v1, v2

    div-float v1, v0, v1

    .line 1712
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1717
    :goto_3
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/my/target/core/ui/views/CacheImageView;->setPadding(IIII)V

    .line 1718
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1720
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1723
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1724
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/BorderedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_1
    if-nez p2, :cond_7

    .line 193
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->post(Ljava/lang/Runnable;)Z

    .line 198
    :goto_5
    return-void

    .line 1214
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v6}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 163
    :cond_3
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getCtaText()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v6}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1715
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 1725
    :cond_6
    const-string v4, "banner"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1728
    if-eqz v0, :cond_8

    .line 1729
    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    .line 1731
    :goto_6
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1732
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 1734
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:I

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1736
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1737
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1738
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 196
    :cond_7
    invoke-direct {p0, p2}, Lcom/my/target/core/ui/views/StandardNativeView;->a(I)V

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6
.end method

.method public setEngineListener(Lcom/my/target/core/ui/views/StandardNativeView$a;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:Lcom/my/target/core/ui/views/StandardNativeView$a;

    .line 203
    return-void
.end method

.method public setMyTargetClickListener(Lcom/my/target/core/engines/i;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->t:Lcom/my/target/core/engines/i;

    .line 223
    return-void
.end method

.method public setViewSettings(Lcom/my/target/core/models/j;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 227
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Lcom/my/target/core/models/j;

    .line 229
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 234
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 235
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 237
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 245
    :goto_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setBackgroundColor(I)V

    .line 246
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/FrameLayout;

    .line 247
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->i()I

    move-result v1

    invoke-static {v1}, Lcom/my/target/core/utils/l;->d(I)I

    move-result v1

    .line 246
    invoke-static {v0, v4, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 249
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/ViewFlipper;

    .line 250
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->h()I

    move-result v1

    .line 251
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->i()I

    move-result v2

    .line 249
    invoke-static {v0, v1, v2}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 253
    if-eqz p2, :cond_3

    .line 254
    invoke-virtual {p0, v4}, Lcom/my/target/core/ui/views/StandardNativeView;->setBackgroundColor(I)V

    .line 260
    :goto_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    .line 261
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->r()I

    move-result v1

    .line 262
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->s()I

    move-result v2

    .line 260
    invoke-static {v0, v1, v2}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 263
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 264
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 266
    :goto_4
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 257
    :cond_3
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->h()I

    move-result v0

    .line 258
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->i()I

    move-result v1

    .line 256
    invoke-static {p0, v0, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    goto :goto_3

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4
.end method
