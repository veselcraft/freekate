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
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const v0, -0x8cc9967

    .line 35
    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    const/16 v0, 0xf

    .line 36
    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    const/16 v0, 0xff

    .line 37
    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    .line 39
    iput-boolean v0, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    .line 98
    new-instance v0, Lcom/perm/kate/SettingsPaint$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$1;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->color_clickListener:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/perm/kate/SettingsPaint$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$2;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->sizeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 140
    new-instance v0, Lcom/perm/kate/SettingsPaint$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$3;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->opacityChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 158
    new-instance v0, Lcom/perm/kate/SettingsPaint$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$4;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->blurChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 176
    new-instance v0, Lcom/perm/kate/SettingsPaint$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$5;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->emboss_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 184
    new-instance v0, Lcom/perm/kate/SettingsPaint$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$6;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->saveOnClickListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v0, Lcom/perm/kate/SettingsPaint$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/SettingsPaint$7;-><init>(Lcom/perm/kate/SettingsPaint;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->cancelOnCliclListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SettingsPaint;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->showColorPicker()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SettingsPaint;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    return p0
.end method

.method static synthetic access$102(Lcom/perm/kate/SettingsPaint;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/perm/kate/SettingsPaint;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->drawSample()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/SettingsPaint;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    return p0
.end method

.method static synthetic access$302(Lcom/perm/kate/SettingsPaint;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/SettingsPaint;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    return p0
.end method

.method static synthetic access$402(Lcom/perm/kate/SettingsPaint;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/SettingsPaint;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    return p0
.end method

.method static synthetic access$502(Lcom/perm/kate/SettingsPaint;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    return p1
.end method

.method static synthetic access$600(Lcom/perm/kate/SettingsPaint;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    return p0
.end method

.method private drawSample()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 215
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 216
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    iget-boolean v0, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    if-nez v0, :cond_0

    iget v2, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    if-lez v2, :cond_0

    .line 220
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/perm/kate/SettingsPaint;->mBlur:Landroid/graphics/MaskFilter;

    .line 221
    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->mEmboss:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_0
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 226
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    int-to-float v0, v0

    .line 227
    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 228
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->iv_color_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private init()V
    .locals 5

    .line 72
    sget v0, Lcom/perm/kate/PaintActivity;->brushColor:I

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    .line 73
    sget v0, Lcom/perm/kate/PaintActivity;->brushSize:I

    iput v0, p0, Lcom/perm/kate/SettingsPaint;->brushSize:I

    .line 74
    sget v1, Lcom/perm/kate/PaintActivity;->brushOpacity:I

    iput v1, p0, Lcom/perm/kate/SettingsPaint;->brushOpacity:I

    .line 75
    sget v1, Lcom/perm/kate/PaintActivity;->brushBlur:I

    iput v1, p0, Lcom/perm/kate/SettingsPaint;->brushBlur:I

    .line 76
    sget-boolean v1, Lcom/perm/kate/PaintActivity;->enableEmboss:Z

    iput-boolean v1, p0, Lcom/perm/kate/SettingsPaint;->enableEmboss:Z

    .line 78
    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_size:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

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

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 83
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

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

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 90
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 91
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showColorPicker()V
    .locals 3

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    const-class v1, Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/perm/kate/SettingsPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const-string v2, "com.perm.kate.default_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x7d3

    .line 109
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 114
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7d3

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "com.perm.kate.color_selected"

    .line 116
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 117
    iput p1, p0, Lcom/perm/kate/SettingsPaint;->brushColor:I

    .line 118
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->drawSample()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0116

    .line 49
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f02b6

    .line 50
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    const p1, 0x7f09019d

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/SettingsPaint;->iv_color_view:Landroid/widget/ImageView;

    const p1, 0x7f0902b5

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_size:Landroid/widget/SeekBar;

    const p1, 0x7f090068

    .line 54
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_color:Landroid/widget/Button;

    const p1, 0x7f0902b4

    .line 55
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_opacity:Landroid/widget/SeekBar;

    const p1, 0x7f0902b3

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_blur:Landroid/widget/SeekBar;

    const p1, 0x7f0900ab

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/SettingsPaint;->cb_emboss:Landroid/widget/CheckBox;

    const p1, 0x7f090078

    .line 58
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_save:Landroid/widget/Button;

    const p1, 0x7f09006a

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_cancel:Landroid/widget/Button;

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->init()V

    .line 61
    invoke-direct {p0}, Lcom/perm/kate/SettingsPaint;->drawSample()V

    .line 62
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_color:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->color_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_size:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->sizeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_opacity:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->opacityChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint;->sb_brush_blur:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->blurChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint;->cb_emboss:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->emboss_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_save:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->saveOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint;->btn_brush_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/SettingsPaint;->cancelOnCliclListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
