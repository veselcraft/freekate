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
.field static brushBlur:I

.field static brushColor:I

.field static brushOpacity:I

.field static brushSize:I

.field static enableEmboss:Z


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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const v0, -0x19cc9967

    sput v0, Lcom/perm/kate/PaintActivity;->brushColor:I

    .line 83
    const/16 v0, 0xf

    sput v0, Lcom/perm/kate/PaintActivity;->brushSize:I

    .line 84
    const/16 v0, 0xe6

    sput v0, Lcom/perm/kate/PaintActivity;->brushOpacity:I

    .line 85
    sput v1, Lcom/perm/kate/PaintActivity;->brushBlur:I

    .line 86
    sput-boolean v1, Lcom/perm/kate/PaintActivity;->enableEmboss:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PaintActivity;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PaintActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PaintActivity;)Lcom/perm/kate/PaintActivity$MyView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PaintActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/PaintActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PaintActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    return p1
.end method

.method static synthetic access$300(Lcom/perm/kate/PaintActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PaintActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PaintActivity;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PaintActivity;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/PaintActivity;->fillMenuItems(Landroid/view/Menu;)V

    return-void
.end method

.method private fillMenuItems(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {v0}, Lcom/perm/kate/PaintActivity$MyView;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x6

    const v1, 0x7f070292

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 312
    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f07006f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 313
    const/4 v0, 0x2

    const v1, 0x7f07009b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 314
    const/4 v0, 0x3

    const v1, 0x7f0701e0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 315
    const/4 v0, 0x4

    const v1, 0x7f070060

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 316
    const/4 v0, 0x5

    const v1, 0x7f070091

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 317
    return-void
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {v0}, Lcom/perm/kate/PaintActivity$MyView;->setPreviousBitmap()V

    goto :goto_0
.end method

.method private onClear()V
    .locals 3

    .prologue
    .line 352
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070076

    .line 353
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07051d

    new-instance v2, Lcom/perm/kate/PaintActivity$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/PaintActivity$1;-><init>(Lcom/perm/kate/PaintActivity;)V

    .line 354
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070319

    const/4 v2, 0x0

    .line 360
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 363
    return-void
.end method

.method private onErase()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-boolean v0, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 424
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 425
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 426
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 429
    :goto_0
    iget-boolean v0, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    .line 430
    return-void

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onSave()V
    .locals 7

    .prologue
    .line 367
    :try_start_0
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getTempFile()Ljava/io/File;

    move-result-object v1

    .line 368
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 369
    .local v3, "out":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {v4}, Lcom/perm/kate/PaintActivity$MyView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 374
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "uri"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/perm/kate/PaintActivity;->setResult(ILandroid/content/Intent;)V

    .line 377
    invoke-virtual {p0}, Lcom/perm/kate/PaintActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onSettings()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/SettingsPaint;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 390
    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/PaintActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 391
    return-void
.end method

.method private setBrushParameters()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 409
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/perm/kate/PaintActivity;->brushColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/perm/kate/PaintActivity;->brushOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 411
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/perm/kate/PaintActivity;->brushSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 412
    sget-boolean v0, Lcom/perm/kate/PaintActivity;->enableEmboss:Z

    if-nez v0, :cond_0

    sget v0, Lcom/perm/kate/PaintActivity;->brushBlur:I

    if-lez v0, :cond_0

    .line 413
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget v1, Lcom/perm/kate/PaintActivity;->brushBlur:I

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/perm/kate/PaintActivity;->mBlur:Landroid/graphics/MaskFilter;

    .line 414
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity;->mBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 419
    :goto_0
    return-void

    .line 415
    :cond_0
    sget-boolean v0, Lcom/perm/kate/PaintActivity;->enableEmboss:Z

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity;->mEmboss:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0
.end method

.method private setupMenuButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    const v2, 0x7f0e01ff

    invoke-virtual {p0, v2}, Lcom/perm/kate/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "fl_button_menu":Landroid/view/View;
    const v2, 0x7f0e0342

    invoke-virtual {p0, v2}, Lcom/perm/kate/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 469
    .local v0, "dark_transparent_bg":Landroid/view/View;
    if-nez v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 474
    new-instance v2, Lcom/perm/kate/PaintActivity$MenuOnClickListener;

    invoke-direct {v2, p0}, Lcom/perm/kate/PaintActivity$MenuOnClickListener;-><init>(Lcom/perm/kate/PaintActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private showColorPicker()V
    .locals 3

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 347
    const-string v1, "com.perm.kate.default_color"

    iget-object v2, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const/16 v1, 0x7d3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/PaintActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 349
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 395
    const/16 v1, 0x7d1

    if-ne p1, v1, :cond_0

    if-ne p2, v3, :cond_0

    .line 396
    iput-boolean v2, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    .line 397
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    .line 399
    :cond_0
    const/16 v1, 0x7d3

    if-ne p1, v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 400
    const-string v1, "com.perm.kate.color_selected"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 401
    .local v0, "color":I
    sput v0, Lcom/perm/kate/PaintActivity;->brushColor:I

    .line 402
    iput-boolean v2, p0, Lcom/perm/kate/PaintActivity;->enableErase:Z

    .line 403
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    .line 405
    .end local v0    # "color":I
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/PaintActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/PaintActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 47
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/perm/kate/PaintActivity;->width:I

    .line 48
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/perm/kate/PaintActivity;->height:I

    .line 50
    :try_start_0
    new-instance v3, Lcom/perm/kate/PaintActivity$MyView;

    iget v4, p0, Lcom/perm/kate/PaintActivity;->width:I

    iget v5, p0, Lcom/perm/kate/PaintActivity;->height:I

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/perm/kate/PaintActivity$MyView;-><init>(Lcom/perm/kate/PaintActivity;Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    .line 52
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->getShowMenuFlag(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const v3, 0x7f0300cc

    invoke-virtual {p0, v3}, Lcom/perm/kate/PaintActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setupMenuButton()V

    .line 55
    const v3, 0x7f0e027d

    invoke-virtual {p0, v3}, Lcom/perm/kate/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 56
    .local v1, "paint_root":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 60
    .end local v1    # "paint_root":Landroid/widget/RelativeLayout;
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 63
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/perm/kate/PaintActivity;->brushColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 66
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 67
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/perm/kate/PaintActivity;->brushSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    new-instance v3, Landroid/graphics/EmbossMaskFilter;

    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x40600000    # 3.5f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    iput-object v3, p0, Lcom/perm/kate/PaintActivity;->mEmboss:Landroid/graphics/MaskFilter;

    .line 72
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x41000000    # 8.0f

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v3, p0, Lcom/perm/kate/PaintActivity;->mBlur:Landroid/graphics/MaskFilter;

    .line 74
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->setBrushParameters()V

    .line 80
    :goto_1
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {p0, v3}, Lcom/perm/kate/PaintActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 78
    invoke-virtual {p0}, Lcom/perm/kate/PaintActivity;->finish()V

    goto :goto_1

    .line 70
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {v0}, Lcom/perm/kate/PaintActivity$MyView;->onDestroy()V

    .line 463
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 464
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 434
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/perm/kate/PaintActivity;->paintView:Lcom/perm/kate/PaintActivity$MyView;

    invoke-virtual {v1}, Lcom/perm/kate/PaintActivity$MyView;->getIsClean()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 437
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f070353

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/PaintActivity$3;

    invoke-direct {v3, p0}, Lcom/perm/kate/PaintActivity$3;-><init>(Lcom/perm/kate/PaintActivity;)V

    .line 438
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    new-instance v3, Lcom/perm/kate/PaintActivity$2;

    invoke-direct {v3, p0}, Lcom/perm/kate/PaintActivity$2;-><init>(Lcom/perm/kate/PaintActivity;)V

    .line 443
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 447
    const/4 v1, 0x1

    .line 450
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 341
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 323
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->showColorPicker()V

    goto :goto_0

    .line 326
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onErase()V

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onSettings()V

    goto :goto_0

    .line 332
    :pswitch_3
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onClear()V

    goto :goto_0

    .line 335
    :pswitch_4
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onSave()V

    goto :goto_0

    .line 338
    :pswitch_5
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity;->onCancel()V

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 304
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 305
    invoke-direct {p0, p1}, Lcom/perm/kate/PaintActivity;->fillMenuItems(Landroid/view/Menu;)V

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 507
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 508
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    .line 509
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 514
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    .line 515
    return-void
.end method
