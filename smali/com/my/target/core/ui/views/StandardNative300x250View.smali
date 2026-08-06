.class public Lcom/my/target/core/ui/views/StandardNative300x250View;
.super Landroid/widget/RelativeLayout;
.source "StandardNative300x250View.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Landroid/widget/RelativeLayout;

.field private final f:Lcom/my/target/core/ui/views/FitBitmapImageView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/Button;

.field private final j:Lcom/my/target/core/ui/views/FitBitmapImageView;

.field private final k:Landroid/widget/FrameLayout;

.field private final l:Lcom/my/target/core/utils/l;

.field private final m:Landroid/widget/LinearLayout;

.field private final n:Landroid/widget/TextView;

.field private final o:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final p:Lcom/my/target/core/ui/views/FitBitmapImageView;

.field private final q:Landroid/widget/FrameLayout;

.field private final r:Lcom/my/target/core/ui/views/BorderedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/StandardNative300x250View;->a:I

    .line 31
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/StandardNative300x250View;->b:I

    .line 32
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/StandardNative300x250View;->c:I

    .line 33
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/StandardNative300x250View;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/my/target/core/ui/views/StandardNative300x250View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->e:Landroid/widget/RelativeLayout;

    .line 59
    new-instance v0, Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FitBitmapImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->f:Lcom/my/target/core/ui/views/FitBitmapImageView;

    .line 60
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    .line 61
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    .line 62
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    .line 63
    new-instance v0, Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FitBitmapImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->j:Lcom/my/target/core/ui/views/FitBitmapImageView;

    .line 64
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->k:Landroid/widget/FrameLayout;

    .line 65
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->m:Landroid/widget/LinearLayout;

    .line 67
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    .line 68
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->o:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 69
    new-instance v0, Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FitBitmapImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->p:Lcom/my/target/core/ui/views/FitBitmapImageView;

    .line 70
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->q:Landroid/widget/FrameLayout;

    .line 71
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 72
    return-void
.end method


# virtual methods
.method public setBanner(Lcom/my/target/core/models/banners/j;)V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/16 v8, 0x8

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 76
    .line 1182
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/StandardNative300x250View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1184
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/16 v3, 0x2a

    .line 1186
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1187
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1188
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1189
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->e:Landroid/widget/RelativeLayout;

    sget v3, Lcom/my/target/core/ui/views/StandardNative300x250View;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1190
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/16 v3, 0x26

    .line 1193
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1194
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1195
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->k:Landroid/widget/FrameLayout;

    sget v3, Lcom/my/target/core/ui/views/StandardNative300x250View;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1196
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1201
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1202
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->f:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v2, v1}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1207
    const/4 v2, 0x1

    sget v3, Lcom/my/target/core/ui/views/StandardNative300x250View;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1208
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1211
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1212
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1213
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1214
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1215
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    sget v2, Lcom/my/target/core/ui/views/StandardNative300x250View;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1217
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1218
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1219
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1220
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1221
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1222
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1225
    const/4 v2, 0x3

    sget v3, Lcom/my/target/core/ui/views/StandardNative300x250View;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1226
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    sget v2, Lcom/my/target/core/ui/views/StandardNative300x250View;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1229
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1230
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1231
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1232
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/16 v3, 0x24

    .line 1233
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1234
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1235
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1236
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1237
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1238
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1242
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/16 v3, 0x128

    .line 1243
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/16 v4, 0xa8

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1244
    const/4 v2, 0x3

    sget v3, Lcom/my/target/core/ui/views/StandardNative300x250View;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1245
    sget v2, Lcom/my/target/core/ui/views/StandardNative300x250View;->c:I

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1246
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1247
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1248
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->j:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v2, v1}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->j:Lcom/my/target/core/ui/views/FitBitmapImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1251
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1252
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1253
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1255
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1257
    const/4 v2, 0x3

    sget v3, Lcom/my/target/core/ui/views/StandardNative300x250View;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1258
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1261
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/16 v4, 0xa

    .line 1262
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1263
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1264
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1265
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1266
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->o:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v2, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1271
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1272
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1273
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v2, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 1275
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setLines(I)V

    .line 1276
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v6, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextSize(IF)V

    .line 1278
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->p:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {p0, v1, v7, v7}, Lcom/my/target/core/ui/views/StandardNative300x250View;->addView(Landroid/view/View;II)V

    .line 1281
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v7, v7}, Lcom/my/target/core/ui/views/StandardNative300x250View;->addView(Landroid/view/View;II)V

    .line 1285
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->m:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->o:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1286
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->m:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1288
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1289
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1290
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1291
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->k:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->f:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1292
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1293
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1294
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNative300x250View;->addView(Landroid/view/View;)V

    .line 1295
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNative300x250View;->addView(Landroid/view/View;)V

    .line 1296
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->j:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNative300x250View;->addView(Landroid/view/View;)V

    .line 1297
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNative300x250View;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->b()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getCtaText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v1, v8}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->f:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->f()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    .line 91
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->f:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->j:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->a()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    .line 93
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->j:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    const-string v1, "teaser"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->p:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v0, v8}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    const-string v0, "store"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->o:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 124
    :goto_1
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v1, v5}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->j:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v1, v8}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->p:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v1, v5}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->p:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/j;->f()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    .line 122
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->p:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;Z)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/my/target/core/ui/views/StandardNative300x250View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setViewSettings(Lcom/my/target/core/models/j;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 135
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 147
    :goto_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->f:Lcom/my/target/core/ui/views/FitBitmapImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setBackgroundColor(I)V

    .line 148
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->k:Landroid/widget/FrameLayout;

    .line 149
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->i()I

    move-result v1

    invoke-static {v1}, Lcom/my/target/core/utils/l;->d(I)I

    move-result v1

    .line 148
    invoke-static {v0, v6, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 151
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->q:Landroid/widget/FrameLayout;

    .line 152
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->i()I

    move-result v1

    invoke-static {v1}, Lcom/my/target/core/utils/l;->d(I)I

    move-result v1

    .line 151
    invoke-static {v0, v6, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 154
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->i()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 156
    const-string v0, "banner"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0, v6}, Lcom/my/target/core/ui/views/StandardNative300x250View;->setBackgroundColor(I)V

    .line 159
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    .line 172
    :goto_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    .line 173
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->r()I

    move-result v1

    .line 174
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->s()I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->l:Lcom/my/target/core/utils/l;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    .line 172
    invoke-static {v0, v1, v2, v3}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;III)V

    .line 175
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 176
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {v0, v5, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 178
    :goto_4
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->m()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 164
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->r:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 167
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->h()I

    move-result v0

    .line 168
    invoke-virtual {p1}, Lcom/my/target/core/models/j;->i()I

    move-result v1

    .line 166
    invoke-static {p0, v0, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    goto :goto_3

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNative300x250View;->i:Landroid/widget/Button;

    invoke-virtual {v0, v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4
.end method
