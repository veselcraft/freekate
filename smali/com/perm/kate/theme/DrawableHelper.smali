.class public abstract Lcom/perm/kate/theme/DrawableHelper;
.super Ljava/lang/Object;
.source "DrawableHelper.java"


# static fields
.field private static button_arr_radius:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 19
    sput-object v0, Lcom/perm/kate/theme/DrawableHelper;->button_arr_radius:[F

    return-void
.end method

.method public static getButtonBgDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 21
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v1, Lcom/perm/kate/theme/DrawableHelper;->button_arr_radius:[F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 22
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 23
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method

.method public static getFloatingActionButtonBgDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 85
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->getFloatingActionButtonBg()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public static getHeaderBottomLineDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 79
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public static getNotifyBg(IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x402a000000000000L    # 13.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    .line 96
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p1

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float p1, p1

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 98
    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 99
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public static getTabItemBgDrawable(IIIZI)Landroid/graphics/drawable/Drawable;
    .locals 21

    move/from16 v0, p0

    move/from16 v1, p1

    .line 28
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 29
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 30
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 34
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    .line 36
    :goto_0
    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    .line 39
    new-instance v11, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v11, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 40
    invoke-virtual {v11}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    move/from16 v6, p2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v12, 0x2

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aput-object v11, v5, v13

    const/4 v14, 0x1

    aput-object v3, v5, v14

    .line 42
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    if-lez p4, :cond_1

    const/16 v16, 0x0

    const/16 v17, 0x0

    sub-int v18, p4, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v3

    .line 44
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move v10, v1

    .line 45
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    aput-object v11, v5, v13

    aput-object v4, v5, v14

    .line 49
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    if-lez p4, :cond_2

    const/16 v16, 0x0

    const/16 v17, 0x0

    sub-int v18, p4, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v4

    .line 51
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_2
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v4

    move v10, v1

    .line 52
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 55
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v5, v12, [I

    .line 56
    fill-array-data v5, :array_0

    invoke-virtual {v1, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v4, v14, [I

    const v5, 0x10100a1

    aput v5, v4, v13

    .line 57
    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v14, [I

    const v4, 0x10100a7

    aput v4, v3, v13

    .line 58
    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 59
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1

    :array_0
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data
.end method

.method public static getTabletTabItemBgDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 64
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 66
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 69
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 71
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10102fe

    aput v4, v3, v0

    .line 72
    invoke-virtual {v1, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v2, [I

    const v2, 0x10100a7

    aput v2, p1, v0

    .line 73
    invoke-virtual {v1, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    sget-object p0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v1, p0, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x10102fe
        0x10100a7
    .end array-data
.end method
