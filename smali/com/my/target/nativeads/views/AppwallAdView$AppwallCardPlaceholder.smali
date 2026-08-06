.class public Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;
.super Landroid/widget/FrameLayout;
.source "AppwallAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/views/AppwallAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppwallCardPlaceholder"
.end annotation


# instance fields
.field private rootLayout:Landroid/widget/LinearLayout;

.field private view:Lcom/my/target/nativeads/views/AppwallAdTeaserView;


# direct methods
.method public constructor <init>(Lcom/my/target/nativeads/views/AppwallAdTeaserView;Landroid/content/Context;)V
    .locals 13

    .prologue
    const v12, -0x333334

    const/4 v11, -0x2

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 201
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 202
    iput-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->view:Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    .line 204
    const/high16 v0, 0x41100000    # 9.0f

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v8, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 205
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v8, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 206
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 208
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->rootLayout:Landroid/widget/LinearLayout;

    .line 209
    iget-object v3, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    iget-object v3, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->rootLayout:Landroid/widget/LinearLayout;

    const v4, -0x111112

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 212
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    invoke-virtual {p1, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 219
    int-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->setElevation(F)V

    .line 221
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v10, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 223
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v10, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 227
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 228
    new-array v3, v8, [I

    const v4, 0x10100a7

    aput v4, v3, v9

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 229
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {p1, v2}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v11, v11}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->addView(Landroid/view/View;II)V

    .line 263
    return-void

    .line 234
    :cond_0
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    new-array v5, v10, [I

    fill-array-data v5, :array_2

    .line 238
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 239
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v10, [I

    fill-array-data v5, :array_3

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 245
    invoke-virtual {v2, v8, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 247
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v6, v10, [I

    fill-array-data v6, :array_4

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 250
    invoke-virtual {v4, v8, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 252
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 253
    new-array v6, v8, [I

    const v7, 0x10100a7

    aput v7, v6, v9

    invoke-virtual {v5, v6, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 254
    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v5, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-virtual {p1, v5}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {v3, v9, v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v9, v0, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 221
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 223
    :array_1
    .array-data 4
        -0x111112
        -0x111112
    .end array-data

    .line 237
    :array_2
    .array-data 4
        -0x333334
        -0x111112
    .end array-data

    .line 243
    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 247
    :array_4
    .array-data 4
        -0x111112
        -0x111112
    .end array-data
.end method


# virtual methods
.method public getView()Lcom/my/target/nativeads/views/AppwallAdTeaserView;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->view:Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    return-object v0
.end method
