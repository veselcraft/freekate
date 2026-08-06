.class public Lcom/perm/kate/SettingsPaint;
.super Lcom/perm/kate/BaseActivity;
.source "SettingsPaint.java"


# instance fields
.field private blurChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private brushBlur:I

.field private brushColor:I

.field private brushOpacity:I

.field private brushSize:I

.field private btn_brush_cancel:Landroid/widget/Button;

.field private btn_brush_color:Landroid/widget/Button;

.field private btn_brush_save:Landroid/widget/Button;

.field private cancelOnCliclListener:Landroid/view/View$OnClickListener;

.field private cb_emboss:Landroid/widget/CheckBox;

.field private color_clickListener:Landroid/view/View$OnClickListener;

.field private emboss_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private enableEmboss:Z

.field private iv_color_view:Landroid/widget/ImageView;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBlur:Landroid/graphics/MaskFilter;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mEmboss:Landroid/graphics/MaskFilter;

.field private mPaint:Landroid/graphics/Paint;

.field private opacityChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private saveOnClickListener:Landroid/view/View$OnClickListener;

.field private sb_brush_blur:Landroid/widget/SeekBar;

.field private sb_brush_opacity:Landroid/widget/SeekBar;

.field private sb_brush_size:Landroid/widget/SeekBar;

.field private sizeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 35
    const v0, -0x8cc9967

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    .line 36
    const/16 v0, 0xf

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    .line 37
    const/16 v0, 0xff

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    .line 38
    iput v1, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    .line 39
    iput-boolean v1, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    .line 98
    new-instance v0, Lcom/perm/kate/SettingsPaint$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$1;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->color_clickListener:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/perm/kate/SettingsPaint$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$2;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->sizeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 139
    new-instance v0, Lcom/perm/kate/SettingsPaint$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$3;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->opacityChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 157
    new-instance v0, Lcom/perm/kate/SettingsPaint$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$4;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->blurChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 175
    new-instance v0, Lcom/perm/kate/SettingsPaint$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$5;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->emboss_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 183
    new-instance v0, Lcom/perm/kate/SettingsPaint$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$6;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->saveOnClickListener:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/perm/kate/SettingsPaint$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$7;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->cancelOnCliclListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SettingsPaint;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->showColorPicker()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SettingsPaint;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 24
    iget v0, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/perm/kate/SettingsPaint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/perm/kate/SettingsPaint;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->drawSample()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/SettingsPaint;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 24
    iget v0, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    return v0
.end method

.method static synthetic access$302(Lcom/perm/kate/SettingsPaint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/SettingsPaint;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 24
    iget v0, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    return v0
.end method

.method static synthetic access$402(Lcom/perm/kate/SettingsPaint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/SettingsPaint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    return v0
.end method

.method static synthetic access$502(Lcom/perm/kate/SettingsPaint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    return p1
.end method

.method static synthetic access$600(Lcom/perm/kate/SettingsPaint;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 24
    iget v0, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    return v0
.end method

.method private drawSample()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mCanvas:Landroid/graphics/Canvas;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 214
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 215
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 218
    iget-boolean v2, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    if-lez v2, :cond_0

    .line 219
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/perm/kate/SettingsPaint;->mBlur:Landroid/graphics/MaskFilter;

    .line 220
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/perm/kate/SettingsPaint;->mBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 225
    :goto_0
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    int-to-float v0, v2

    .local v0, "x":F
    move v1, v0

    .line 226
    .local v1, "y":F
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 227
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->iv_color_view:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/perm/kate/SettingsPaint;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    return-void

    .line 221
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    iget-boolean v2, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/perm/kate/SettingsPaint;->mEmboss:Landroid/graphics/MaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v3, 0x1

    .line 72
    sget v0, Lcom/perm/kate/PaintActivity;->brushColor:I

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    .line 73
    sget v0, Lcom/perm/kate/PaintActivity;->brushSize:I

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    .line 74
    sget v0, Lcom/perm/kate/PaintActivity;->brushOpacity:I

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    .line 75
    sget v0, Lcom/perm/kate/PaintActivity;->brushBlur:I

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    .line 76
    sget-boolean v0, Lcom/perm/kate/PaintActivity;->enableEmboss:Z

    iput-boolean v0, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    .line 78
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_size:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 79
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_opacity:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 80
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_blur:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->cb_emboss:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->mBitmap:Landroid/graphics/Bitmap;

    .line 84
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->mCanvas:Landroid/graphics/Canvas;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 90
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 91
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->mEmboss:Landroid/graphics/MaskFilter;

    .line 96
    return-void

    .line 95
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showColorPicker()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const-string v1, "com.perm.kate.default_color"

    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const/16 v1, 0x7d3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/SettingsPaint;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 114
    const/16 v1, 0x7d3

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 115
    const-string v1, "com.perm.kate.color_selected"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, "color":I
    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    .line 117
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->drawSample()V

    .line 119
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0300fa

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->setContentView(I)V

    .line 50
    const v0, 0x7f07025c

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->setHeaderTitle(I)V

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/SettingsPaint;->setButtonsBg()V

    .line 52
    const v0, 0x7f0e031a

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->iv_color_view:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0e031c

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_size:Landroid/widget/SeekBar;

    .line 54
    const v0, 0x7f0e031b

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_color:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0e031d

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_opacity:Landroid/widget/SeekBar;

    .line 56
    const v0, 0x7f0e031e

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_blur:Landroid/widget/SeekBar;

    .line 57
    const v0, 0x7f0e031f

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->cb_emboss:Landroid/widget/CheckBox;

    .line 58
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_save:Landroid/widget/Button;

    .line 59
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/SettingsPaint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_cancel:Landroid/widget/Button;

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->init()V

    .line 61
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->drawSample()V

    .line 62
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_color:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->color_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_size:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->sizeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_opacity:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->opacityChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_blur:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->blurChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->cb_emboss:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->emboss_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->saveOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->cancelOnCliclListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
