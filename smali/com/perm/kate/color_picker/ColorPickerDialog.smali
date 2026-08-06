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

.field final dialog:Landroid/support/v7/app/AlertDialog;

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
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "listener"    # Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    .line 38
    iput-object p3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "view":Landroid/view/View;
    const v0, 0x7f0e00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    .line 43
    const v0, 0x7f0e00dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/color_picker/ColorPickerBox;

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    .line 44
    const v0, 0x7f0e00de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0e00e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewOldColor:Landroid/view/View;

    .line 46
    const v0, 0x7f0e00e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    .line 47
    const v0, 0x7f0e00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0e00db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getHue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/perm/kate/color_picker/ColorPickerBox;->setHue(F)V

    .line 51
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewOldColor:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    new-instance v3, Lcom/perm/kate/color_picker/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$1;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    new-instance v3, Lcom/perm/kate/color_picker/ColorPickerDialog$2;

    invoke-direct {v3, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$2;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    invoke-virtual {v0, v3}, Lcom/perm/kate/color_picker/ColorPickerBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104000a

    new-instance v4, Lcom/perm/kate/color_picker/ColorPickerDialog$5;

    invoke-direct {v4, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$5;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    .line 105
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/perm/kate/color_picker/ColorPickerDialog$4;

    invoke-direct {v4, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$4;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    .line 112
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/perm/kate/color_picker/ColorPickerDialog$3;

    invoke-direct {v3, p0}, Lcom/perm/kate/color_picker/ColorPickerDialog$3;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 130
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->dialog:Landroid/support/v7/app/AlertDialog;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 134
    .local v6, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/perm/kate/color_picker/ColorPickerDialog$6;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/color_picker/ColorPickerDialog$6;-><init>(Lcom/perm/kate/color_picker/ColorPickerDialog;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/color_picker/ColorPickerDialog;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->setHue(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/color_picker/ColorPickerDialog;)F
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/color_picker/ColorPickerDialog;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getHue()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/perm/kate/color_picker/ColorPickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/color_picker/ColorPickerDialog;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/color_picker/ColorPickerDialog;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->setSat(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/color_picker/ColorPickerDialog;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->setVal(F)V

    return-void
.end method

.method private getColor()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private getHue()F
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getSat()F
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private getVal()F
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private setHue(F)V
    .locals 2
    .param p1, "hue"    # F

    .prologue
    .line 181
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 182
    return-void
.end method

.method private setSat(F)V
    .locals 2
    .param p1, "sat"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 186
    return-void
.end method

.method private setVal(F)V
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 189
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 190
    return-void
.end method


# virtual methods
.method protected moveCursor()V
    .locals 6

    .prologue
    .line 145
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getHue()F

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 146
    .local v1, "y":F
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
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

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 150
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-double v2, v2

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-void
.end method

.method protected moveTarget()V
    .locals 8

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getSat()F

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v4}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v3, v4

    .line 157
    .local v1, "x":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->getVal()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v4}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 158
    .local v2, "y":F
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v3}, Lcom/perm/kate/color_picker/ColorPickerBox;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-double v4, v3

    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 160
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v3}, Lcom/perm/kate/color_picker/ColorPickerBox;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-double v4, v3

    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 161
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 194
    return-void
.end method
