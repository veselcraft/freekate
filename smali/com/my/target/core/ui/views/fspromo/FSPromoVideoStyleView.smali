.class public Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;
.super Lcom/my/target/core/ui/views/fspromo/FSPromoView;
.source "FSPromoVideoStyleView.java"


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I


# instance fields
.field private final A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

.field private final B:Landroid/widget/TextView;

.field private final C:Landroid/widget/TextView;

.field private final D:Landroid/widget/FrameLayout;

.field private final E:Landroid/widget/FrameLayout;

.field private final F:Lcom/my/target/core/ui/views/video/VideoSeekBar;

.field private final G:Landroid/widget/TextView;

.field private final H:Landroid/widget/TextView;

.field private final I:Landroid/widget/RelativeLayout;

.field private final J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

.field private final K:Lcom/my/target/core/ui/views/controls/IconButton;

.field private final L:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private final M:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private final N:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private O:I

.field private final P:Ljava/lang/Runnable;

.field private Q:Z

.field private final R:Landroid/view/View$OnClickListener;

.field private final S:Landroid/view/View$OnClickListener;

.field private T:F

.field private U:Z

.field private V:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

.field private W:Z

.field private final n:Landroid/widget/Button;

.field private final o:Landroid/widget/TextView;

.field private final p:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final q:Landroid/widget/Button;

.field private final r:Landroid/widget/TextView;

.field private final s:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final t:Landroid/widget/Button;

.field private final u:Lcom/my/target/core/utils/l;

.field private final v:Landroid/widget/RelativeLayout;

.field private final w:Landroid/widget/LinearLayout;

.field private final x:Landroid/widget/LinearLayout;

.field private final y:Landroid/widget/TextView;

.field private final z:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->c:I

    .line 48
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->d:I

    .line 49
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->e:I

    .line 50
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->f:I

    .line 51
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->g:I

    .line 52
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->h:I

    .line 53
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->i:I

    .line 54
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->j:I

    .line 55
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->k:I

    .line 56
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:I

    .line 57
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, -0x2

    const/4 v2, -0x1

    .line 430
    invoke-direct {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->P:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$2;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->R:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$3;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->S:Landroid/view/View$OnClickListener;

    .line 432
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    .line 433
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    .line 434
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    .line 435
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 436
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    .line 437
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    .line 438
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 439
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    .line 440
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    .line 441
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 442
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 443
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->N:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 444
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/TextView;

    .line 445
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Landroid/widget/FrameLayout;

    .line 446
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/FrameLayout;

    .line 447
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/TextView;

    .line 448
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoSeekBar;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/video/VideoSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    .line 449
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    .line 450
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    .line 451
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    .line 452
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    new-instance v1, Lcom/my/target/core/utils/l;

    invoke-direct {v1, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;-><init>(Landroid/content/Context;Lcom/my/target/core/utils/l;Z)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    .line 453
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    .line 454
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 456
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/RelativeLayout;

    .line 457
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    .line 458
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    .line 459
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1465
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->setBackgroundColor(I)V

    .line 1467
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/controls/IconButton;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->a:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setId(I)V

    .line 1469
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v6

    .line 1471
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1473
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1474
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->j:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setId(I)V

    .line 1476
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1477
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setBackgroundColor(I)V

    .line 1478
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a()V

    .line 1480
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    const-string v1, "vdsha"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1481
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1483
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    const/high16 v3, -0x67000000

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1484
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1485
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1487
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1489
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1490
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1489
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1491
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1494
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 1495
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    const-string v1, "vddb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1496
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1497
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1498
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1499
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1500
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1501
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1503
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    const-string v1, "vdth"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1504
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1505
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1506
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1507
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1509
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    const-string v1, "vdtv"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1510
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1511
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1512
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1513
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1514
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1516
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1517
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1516
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1518
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1519
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1518
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1520
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1521
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1520
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1523
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1524
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1525
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1526
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1527
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1528
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1529
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 1530
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 1531
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1533
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    .line 1531
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1536
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1537
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1538
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1539
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1540
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 1541
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1543
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    .line 1541
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1546
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1548
    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->c:I

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1549
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1550
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1549
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1551
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1553
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1556
    const/4 v1, 0x3

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->j:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1557
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1558
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1559
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1561
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1563
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->i:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1564
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1565
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1566
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1567
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1568
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1569
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1567
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1572
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1575
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->d:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1576
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1577
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v4, 0x3

    .line 1578
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1579
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v7, 0x4

    .line 1580
    invoke-virtual {v5, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1577
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1581
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1584
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1587
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1589
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1590
    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 1591
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1592
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1594
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1595
    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 1596
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1597
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1599
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/TextView;

    const-string v1, "vddoh"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1600
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1601
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1602
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1603
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1601
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1606
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/TextView;

    const-string v1, "vddov"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1607
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1608
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1609
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1610
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1608
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1613
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1615
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1616
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1618
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1620
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1621
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1622
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1623
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1624
    invoke-virtual {v5, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1621
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1625
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1627
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1630
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1631
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1632
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1631
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1633
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1635
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1636
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    const-string v1, "vdrep"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1637
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1638
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1640
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1641
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1643
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1644
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1646
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1648
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1649
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1650
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1651
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1652
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1653
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1654
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1655
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1656
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1658
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1660
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1661
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->N:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1662
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->N:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1663
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1664
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1665
    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1662
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1667
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->h:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setId(I)V

    .line 1668
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const-string v1, "vdpab"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1670
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1672
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1673
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v9}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1674
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1675
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1676
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1677
    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1674
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1679
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->g:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setId(I)V

    .line 1680
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const-string v1, "vdplb"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1681
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1682
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1684
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1685
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v9}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1686
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1687
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1688
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1689
    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1686
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1691
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1694
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1696
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1697
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1699
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1703
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1704
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1699
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1705
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1709
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1710
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1705
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1711
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->N:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1715
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1716
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1711
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1718
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1719
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    const-string v1, "vdela"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1720
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1722
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1723
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1724
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1725
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1726
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1727
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1728
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1729
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1730
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1728
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1733
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1734
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    const-string v1, "vdrem"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1735
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1737
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1738
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1739
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1740
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1741
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1742
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1743
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1744
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1745
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1746
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1747
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1745
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1750
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1752
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1753
    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->k:I

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1754
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1755
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1756
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setHeight(I)V

    .line 1758
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1760
    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->j:I

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1761
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1762
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1764
    invoke-virtual {v2, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1765
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    .line 1766
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 1763
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1768
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v2, 0x1c

    .line 1769
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v3, 0x1c

    .line 1770
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1771
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1772
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1773
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1774
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1775
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-virtual {v0, v9}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setVisibility(I)V

    .line 1777
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->addView(Landroid/view/View;)V

    .line 1778
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->addView(Landroid/view/View;)V

    .line 1780
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1781
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1782
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1783
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1785
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1786
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1787
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1788
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1789
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1790
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1791
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0, v0, v6}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1792
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0, v0, v7}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1793
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1795
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1796
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1797
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1798
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1799
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1801
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1802
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1803
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1804
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1805
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1807
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->N:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1808
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:I

    return v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m()V

    return-void
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->P:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 30
    .line 1816
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:I

    .line 1817
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1818
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1819
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1820
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1821
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->Q:Z

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->V:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n()V

    return-void
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->f:I

    return v0
.end method

.method static synthetic k()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->h:I

    return v0
.end method

.method static synthetic l()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->g:I

    return v0
.end method

.method private m()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:I

    .line 234
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:I

    .line 247
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->Q:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 253
    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 293
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 295
    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/controls/IconButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 224
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->g()V

    .line 225
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m()V

    .line 226
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(I)V

    .line 373
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Z)V

    .line 360
    return-void
.end method

.method protected final b(I)V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, -0x2

    const/4 v3, -0x1

    .line 378
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b(I)V

    .line 379
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 387
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 388
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 389
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Lcom/my/target/core/utils/l;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 391
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    :goto_1
    return-void

    .line 394
    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 401
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 406
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 410
    :goto_2
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o()V

    .line 284
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c()V

    .line 285
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o()V

    .line 340
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->f()V

    .line 341
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 304
    .line 1419
    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:I

    .line 1420
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->W:Z

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1424
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1425
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setVisibility(I)V

    .line 260
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n()V

    .line 366
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->g()V

    .line 367
    return-void
.end method

.method public setBanner(Lcom/my/target/core/models/banners/g;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 163
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setBanner(Lcom/my/target/core/models/banners/g;)V

    .line 164
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Lcom/my/target/core/models/banners/g;)V

    .line 165
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->W:Z

    .line 167
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->h()F

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->T:F

    .line 168
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->U:Z

    .line 170
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->h()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setMax(F)V

    .line 176
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->b:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setMax(I)V

    .line 178
    const-string v0, "store"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getVotes()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v4}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v4}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 187
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->N:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c()V

    .line 210
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m()V

    .line 216
    :goto_1
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->Q:Z

    .line 217
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n()V

    goto :goto_1
.end method

.method public setCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    return-void
.end method

.method public setOnCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-void
.end method

.method public setOnVideoClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->V:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    .line 347
    return-void
.end method

.method public setTimeChanged(F)V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/my/target/core/utils/l;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2212"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->b:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Lcom/my/target/core/utils/l;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setProgress(I)V

    .line 315
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->U:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->T:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->T:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/Button;

    .line 316
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->T:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setProgress(F)V

    .line 319
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->T:F

    sub-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setDigit(I)V

    .line 320
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setVisibility(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V

    .line 334
    return-void
.end method
