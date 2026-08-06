.class public Lcom/my/target/core/ui/views/video/VideoDialogView;
.super Landroid/widget/RelativeLayout;
.source "VideoDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I


# instance fields
.field private final A:Landroid/widget/FrameLayout;

.field private final B:Landroid/widget/FrameLayout;

.field private final C:Lcom/my/target/core/ui/views/video/VideoSeekBar;

.field private final D:Landroid/widget/TextView;

.field private final E:Landroid/widget/TextView;

.field private final F:Landroid/widget/RelativeLayout;

.field private final G:Lcom/my/target/core/ui/views/controls/IconButton;

.field private final H:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private final I:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private final J:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private K:I

.field private L:I

.field private final M:Ljava/lang/Runnable;

.field private N:Lcom/my/target/core/ui/b$a;

.field private O:Z

.field private final P:Landroid/view/View$OnClickListener;

.field private final k:Landroid/widget/Button;

.field private final l:Landroid/widget/TextView;

.field private final m:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final n:Landroid/widget/Button;

.field private final o:Landroid/widget/TextView;

.field private final p:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final q:Landroid/widget/Button;

.field private final r:Lcom/my/target/core/utils/l;

.field private final s:Landroid/widget/RelativeLayout;

.field private final t:Landroid/widget/LinearLayout;

.field private final u:Landroid/widget/LinearLayout;

.field private final v:Landroid/widget/TextView;

.field private final w:Landroid/widget/FrameLayout;

.field private final x:Lcom/my/target/nativeads/views/MediaAdView;

.field private final y:Landroid/widget/TextView;

.field private final z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->a:I

    .line 51
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->b:I

    .line 52
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->c:I

    .line 53
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->d:I

    .line 54
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->e:I

    .line 55
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->f:I

    .line 56
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->g:I

    .line 57
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->h:I

    .line 58
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->i:I

    .line 59
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/video/VideoDialogView;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v2, -0x1

    const/4 v8, -0x2

    .line 223
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoDialogView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/video/VideoDialogView$1;-><init>(Lcom/my/target/core/ui/views/video/VideoDialogView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->M:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/video/VideoDialogView$2;-><init>(Lcom/my/target/core/ui/views/video/VideoDialogView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->P:Landroid/view/View$OnClickListener;

    .line 224
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getMediaAdView(Landroid/content/Context;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    .line 226
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    .line 227
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    .line 228
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    .line 229
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 230
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    .line 231
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    .line 232
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 233
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->v:Landroid/widget/TextView;

    .line 234
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    .line 235
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 236
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 237
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 238
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->y:Landroid/widget/TextView;

    .line 239
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->A:Landroid/widget/FrameLayout;

    .line 240
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->B:Landroid/widget/FrameLayout;

    .line 241
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->z:Landroid/widget/TextView;

    .line 242
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoSeekBar;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/video/VideoSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->C:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    .line 243
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    .line 244
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    .line 245
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    .line 247
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    .line 248
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    .line 249
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    .line 250
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 251
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 1286
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1288
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1289
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/MediaAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->h:I

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setId(I)V

    .line 1291
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1292
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setBackgroundColor(I)V

    .line 1294
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    const-string v1, "vdsha"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1295
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1297
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    const/high16 v3, -0x45000000    # -0.001953125f

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1298
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1299
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1301
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1303
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1304
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1303
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1305
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1307
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1308
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    const-string v1, "vddb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1310
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1311
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1313
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    const-string v1, "vdth"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1315
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1316
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1317
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1319
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    const-string v1, "vdtv"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1320
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1321
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1322
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1323
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1324
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1326
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1327
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1326
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1328
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1329
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1328
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1330
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1331
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1330
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1333
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1334
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1335
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1336
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1337
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1339
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1340
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1341
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1342
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1343
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1347
    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->a:I

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1348
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1349
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1348
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1350
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1352
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1355
    const/4 v1, 0x3

    sget v3, Lcom/my/target/core/ui/views/video/VideoDialogView;->h:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1356
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1357
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1358
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1360
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1362
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/video/VideoDialogView;->g:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1363
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1364
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1365
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1366
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1367
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1368
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1366
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1371
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1374
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/video/VideoDialogView;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1375
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1376
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v4, 0x3

    .line 1377
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1378
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v6, 0x4

    .line 1379
    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1376
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1380
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->A:Landroid/widget/FrameLayout;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1383
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1386
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1388
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1389
    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 1390
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1391
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    const-string v3, "vdrh"

    invoke-virtual {v1, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1392
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1395
    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 1396
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1397
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    const-string v3, "vdrv"

    invoke-virtual {v1, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1398
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->y:Landroid/widget/TextView;

    const-string v1, "vddoh"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->y:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1403
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1404
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1402
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1407
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->z:Landroid/widget/TextView;

    const-string v1, "vddov"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1408
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->z:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1409
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1410
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1411
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1409
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1414
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1416
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1417
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1419
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1421
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1422
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1423
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1424
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1425
    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1422
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1426
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1428
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1431
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1432
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1433
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1432
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1434
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1437
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    const-string v1, "vdrep"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1441
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1442
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1443
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1444
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1445
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1447
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1449
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1450
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1451
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1452
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1453
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1454
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->v:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1456
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1458
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1459
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1461
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1462
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1463
    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1460
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1465
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->f:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setId(I)V

    .line 1466
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const-string v1, "vdpab"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1467
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1468
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1470
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1471
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v11}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1473
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1474
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1475
    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1472
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1477
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->e:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setId(I)V

    .line 1478
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const-string v1, "vdplb"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1479
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1480
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1482
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1483
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v11}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1484
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1485
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1486
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1487
    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1484
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1489
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1492
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1494
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1495
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1497
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1501
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1502
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1497
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1503
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1507
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1508
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1503
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1509
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1513
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1514
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1509
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1516
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1517
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    const-string v1, "vdela"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1518
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1520
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1521
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1522
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1524
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1525
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1526
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1527
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1528
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1526
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1531
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1532
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    const-string v1, "vdrem"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1533
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1535
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1536
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1537
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1538
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1539
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1540
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1541
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1542
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1543
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1544
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1545
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1543
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1548
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1550
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1551
    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->i:I

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1552
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/video/VideoDialogView;->j:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1553
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->C:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1554
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->C:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setHeight(I)V

    .line 1556
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1558
    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->h:I

    invoke-virtual {v0, v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1559
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1560
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1561
    invoke-virtual {v2, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1562
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1563
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 1560
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1565
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1566
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1567
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->C:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1568
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1570
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;)V

    .line 1571
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;)V

    .line 1573
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1574
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1575
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1576
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1577
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1578
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0, v0, v6}, Lcom/my/target/core/ui/views/video/VideoDialogView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1579
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0, v0, v7}, Lcom/my/target/core/ui/views/video/VideoDialogView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1582
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1583
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1584
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->A:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1585
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->A:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1586
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1588
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1589
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1590
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1591
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1592
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1594
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1595
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/video/VideoDialogView;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->L:I

    return v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/video/VideoDialogView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->M:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method public final a(FF)V
    .locals 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 605
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->D:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/my/target/core/utils/l;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2212"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-float v1, p2, p1

    invoke-static {v1}, Lcom/my/target/core/utils/l;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->C:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    mul-float v1, p2, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setMax(I)V

    .line 609
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->C:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    mul-float v1, p1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setProgress(I)V

    .line 610
    return-void
.end method

.method public final a(Lcom/my/target/core/ui/views/video/VideoTextureView;)V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;I)V

    .line 601
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 617
    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->L:I

    .line 618
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 625
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->L:I

    .line 655
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 662
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 669
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->L:I

    .line 670
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 677
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 684
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->L:I

    .line 685
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 691
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->O:Z

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 693
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 702
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 706
    iget v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->L:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 711
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 718
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->L:I

    .line 719
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 725
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->O:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 727
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 732
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 633
    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->b:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->c:I

    if-ne v0, v1, :cond_2

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    invoke-interface {v0, p1}, Lcom/my/target/core/ui/b$a;->a(Landroid/view/View;)V

    .line 647
    :cond_1
    :goto_0
    return-void

    .line 636
    :cond_2
    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->d:I

    if-ne v0, v1, :cond_3

    .line 638
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/b$a;->b()V

    goto :goto_0

    .line 639
    :cond_3
    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->f:I

    if-ne v0, v1, :cond_4

    .line 641
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/b$a;->c()V

    goto :goto_0

    .line 642
    :cond_4
    sget v1, Lcom/my/target/core/ui/views/video/VideoDialogView;->e:I

    if-ne v0, v1, :cond_1

    .line 644
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/b$a;->a()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 259
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2266
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2269
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v0, v1

    .line 2277
    :goto_0
    iget v2, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->K:I

    if-eq v0, v2, :cond_0

    .line 2279
    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->K:I

    .line 3185
    if-ne v0, v1, :cond_3

    .line 3187
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3188
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3190
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3193
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3194
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3195
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3197
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3198
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3201
    :goto_1
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    :cond_0
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 262
    return-void

    .line 2274
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3200
    :cond_2
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 3204
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3205
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3207
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3210
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3211
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3213
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3214
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3217
    :goto_3
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 3216
    :cond_4
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3
.end method

.method public setData(Lcom/my/target/core/models/banners/h;Lcom/my/target/nativeads/models/VideoData;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 130
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const-string v0, "store"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getVotes()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 144
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->O:Z

    .line 166
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    .line 167
    invoke-virtual {p2}, Lcom/my/target/nativeads/models/VideoData;->getWidth()I

    move-result v1

    .line 168
    invoke-virtual {p2}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v2

    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setPlaceHolderDimension(II)V

    .line 169
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setDialogListener(Lcom/my/target/core/ui/b$a;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    .line 176
    return-void
.end method

.method public setDismissButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method
