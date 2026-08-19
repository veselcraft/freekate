.class public Lcom/perm/kate/color_picker/ColorPickerDialog;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;
    }
.end annotation


# instance fields
.field final currentColorHsv:[F

.field final dialog:Landroidx/appcompat/app/AlertDialog;

.field final listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

.field final viewContainer:Landroid/view/ViewGroup;

.field final viewCursor:Landroid/widget/ImageView;

.field final viewHue:Landroid/view/View;

.field final viewNewColor:Landroid/view/View;

.field final viewOldColor:Landroid/view/View;

.field final viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

.field final viewTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 35
    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    .line 40
    iput-object p3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    .line 41
    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0043

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0900cb

    .line 44
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    const v1, 0x7f0900cc

    .line 45
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/color_picker/ColorPickerBox;

    iput-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    const v2, 0x7f0900c6

    .line 46
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    const v2, 0x7f0900ce

    .line 47
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewOldColor:Landroid/view/View;

    const v3, 0x7f0900cd

    .line 48
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    const v4, 0x7f0900c9

    .line 49
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    const v4, 0x7f0900ca

    .line 50
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getHue()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/perm/kate/color_picker/ColorPickerBox;->setHue(F)V

    .line 53
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    new-instance p2, Lcom/perm/kate/color_picker/ColorPickerDialog$1;

    invoke-direct {p2, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$1;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    new-instance p2, Lcom/perm/kate/color_picker/ColorPickerDialog$2;

    invoke-direct {p2, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$2;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/perm/kate/color_picker/ColorPickerDialog$5;

    invoke-direct {p1, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$5;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    const v0, 0x104000a

    .line 109
    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/perm/kate/color_picker/ColorPickerDialog$4;

    invoke-direct {p2, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$4;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    const/high16 v0, 0x1040000

    .line 116
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/perm/kate/color_picker/ColorPickerDialog$3;

    invoke-direct {p2, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$3;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    .line 123
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    .line 134
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 137
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 138
    new-instance p2, Lcom/perm/kate/color_picker/ColorPickerDialog$6;

    invoke-direct {p2, p0, p3}, Lcom/perm/kate/color_picker/ColorPickerDialog$6;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->setHue(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/color_picker/ColorPickerDialog;)F
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getHue()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/perm/kate/color_picker/ColorPickerDialog;)I
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->setSat(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->setVal(F)V

    return-void
.end method

.method private getColor()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private getHue()F
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getSat()F
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private getVal()F
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private setHue(F)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private setSat(F)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private setVal(F)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method protected moveCursor()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getHue()F

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 149
    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 153
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-double v2, v2

    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 155
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected moveTarget()V
    .locals 7

    .line 159
    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getSat()F

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 160
    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getVal()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    .line 161
    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-double v3, v3

    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 163
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-double v2, v0

    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 164
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
