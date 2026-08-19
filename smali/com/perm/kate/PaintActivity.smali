.class public Lcom/perm/kate/PaintActivity;
.super Landroid/app/Activity;
.source "PaintActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PaintActivity$MenuOnClickListener;,
        Lcom/perm/kate/PaintActivity$MyView;
    }
.end annotation


# static fields
.field static brushBlur:I = 0x0

.field static brushColor:I = -0x19cc9967

.field static brushOpacity:I = 0xe6

.field static brushSize:I = 0xf

.field static enableEmboss:Z = false


# instance fields
.field private enableErase:Z

.field private height:I

.field private mBlur:Landroid/graphics/MaskFilter;

.field private mEmboss:Landroid/graphics/MaskFilter;

.field private mPaint:Landroid/graphics/Paint;

.field private paintView:Lcom/perm/kate/PaintActivity$MyView;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PaintActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/PaintActivity;)Lcom/perm/kate/PaintActivity$MyView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/PaintActivity;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    return p1
.end method

.method static synthetic access$300(Lcom/perm/kate/PaintActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PaintActivity;Landroid/view/Menu;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/perm/kate/PaintActivity;->fillMenuItems(Landroid/view/Menu;)V

    return-void
.end method

.method private fillMenuItems(Landroid/view/Menu;)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/kate/PaintActivity$MyView;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    const v2, 0x7f0f02ea

    .line 313
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    const v2, 0x7f0f0090

    .line 314
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v2, 0x7f0f00d4

    .line 315
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v2, 0x7f0f023b

    .line 316
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v2, 0x7f0f007f

    .line 317
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const v2, 0x7f0f00c9

    .line 318
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method private onCancel()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    invoke-virtual {v0}, Lcom/perm/kate/PaintActivity$MyView;->setPreviousBitmap()V

    return-void
.end method

.method private onClear()V
    .locals 3

    .line 354
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00a9

    .line 355
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/PaintActivity$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/PaintActivity$1;-><init>(Lcom/perm/kate/PaintActivity;)V

    const v2, 0x7f0f05a7

    .line 356
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f037a

    const/4 v2, 0x0

    .line 362
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private onErase()V
    .locals 3

    .line 424
    iget-boolean v0, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 426
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 427
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 428
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    .line 431
    :goto_0
    iget-boolean v0, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    return-void
.end method

.method private onSave()V
    .locals 5

    .line 369
    :try_start_0
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getTempFile()Ljava/io/File;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 371
    iget-object v2, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {v2}, Lcom/perm/kate/PaintActivity$MyView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 376
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "uri"

    .line 377
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 378
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private onSettings()V
    .locals 2

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    const-class v1, Lcom/perm/kate/SettingsPaint;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x7d1

    .line 392
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private setBrushParameters()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 411
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/perm/kate/PaintActivity;->brushColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/perm/kate/PaintActivity;->brushOpacity:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 413
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/perm/kate/PaintActivity;->brushSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 414
    sget-boolean v0, Lcom/perm/kate/PaintActivity;->enableEmboss:Z

    if-nez v0, :cond_0

    sget v2, Lcom/perm/kate/PaintActivity;->brushBlur:I

    if-lez v2, :cond_0

    .line 415
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget v1, Lcom/perm/kate/PaintActivity;->brushBlur:I

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/perm/kate/PaintActivity;->mBlur:Landroid/graphics/MaskFilter;

    .line 416
    iget-object v1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity;->mEmboss:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_0
    return-void
.end method

.method private setupMenuButton()V
    .locals 3

    const v0, 0x7f09013e

    .line 469
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ea

    .line 470
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 475
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    new-instance v1, Lcom/perm/kate/PaintActivity$MenuOnClickListener;

    invoke-direct {v1, p0}, Lcom/perm/kate/PaintActivity$MenuOnClickListener;-><init>(Lcom/perm/kate/PaintActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showColorPicker()V
    .locals 3

    .line 347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    const-class v1, Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const-string v2, "com.perm.kate.default_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x7d3

    .line 350
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x7d1

    if-ne p1, v2, :cond_0

    if-ne p2, v0, :cond_0

    .line 398
    iput-boolean v1, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    .line 399
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    :cond_0
    const/16 v2, 0x7d3

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    const-string p1, "com.perm.kate.color_selected"

    .line 402
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 403
    sput p1, Lcom/perm/kate/PaintActivity;->brushColor:I

    .line 404
    iput-boolean v1, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    .line 405
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/perm/kate/PaintActivity;->width:I

    .line 49
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/perm/kate/PaintActivity;->height:I

    .line 51
    :try_start_0
    new-instance p1, Lcom/perm/kate/PaintActivity$MyView;

    iget v0, p0, Lcom/perm/kate/PaintActivity;->width:I

    iget v1, p0, Lcom/perm/kate/PaintActivity;->height:I

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/perm/kate/PaintActivity$MyView;-><init>(Lcom/perm/kate/PaintActivity;Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    .line 53
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->getShowMenuFlag(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0c00e6

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setupMenuButton()V

    const p1, 0x7f090264

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 57
    iget-object v1, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 61
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 64
    iget-object p1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/perm/kate/PaintActivity;->brushColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object p1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object p1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 67
    iget-object p1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 68
    iget-object p1, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/perm/kate/PaintActivity;->brushSize:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    new-instance p1, Landroid/graphics/EmbossMaskFilter;

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    aput v3, v2, v1

    const/4 v0, 0x2

    aput v3, v2, v0

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v3, 0x40600000    # 3.5f

    invoke-direct {p1, v2, v0, v1, v3}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    iput-object p1, p0, Lcom/perm/kate/PaintActivity;->mEmboss:Landroid/graphics/MaskFilter;

    .line 73
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    const/high16 v0, 0x41000000    # 8.0f

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/perm/kate/PaintActivity;->mBlur:Landroid/graphics/MaskFilter;

    .line 75
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/perm/kate/PaintActivity$MyView;->onDestroy()V

    .line 465
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {v0}, Lcom/perm/kate/PaintActivity$MyView;->getIsClean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f03b8

    .line 439
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0f05a7

    new-instance v1, Lcom/perm/kate/PaintActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/PaintActivity$3;-><init>(Lcom/perm/kate/PaintActivity;)V

    .line 440
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0f037a

    new-instance v1, Lcom/perm/kate/PaintActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/PaintActivity$2;-><init>(Lcom/perm/kate/PaintActivity;)V

    .line 445
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 452
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 340
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onCancel()V

    return v1

    .line 337
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onSave()V

    return v1

    .line 334
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onClear()V

    return v1

    .line 331
    :pswitch_3
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onSettings()V

    return v1

    .line 328
    :pswitch_4
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onErase()V

    return v1

    .line 325
    :pswitch_5
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->showColorPicker()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 306
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 307
    invoke-direct {p0, p1}, Lcom/perm/kate/PaintActivity;->fillMenuItems(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 509
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 510
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 515
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 516
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    return-void
.end method
