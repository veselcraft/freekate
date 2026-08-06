.class public Lcom/my/target/core/ui/views/controls/AdInfoButton;
.super Landroid/view/View;
.source "AdInfoButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "#99333333"

    sput-object v0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->a:Ljava/lang/String;

    .line 27
    const-string v0, "debug"

    sput-object v0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->c:Landroid/graphics/Paint;

    .line 63
    sget-object v0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->setBackgroundColor(I)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 66
    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->i:I

    .line 67
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 68
    iget-object v1, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->c:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->c:Landroid/graphics/Paint;

    sget-object v1, Lcom/my/target/core/ui/views/controls/AdInfoButton;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->d:F

    .line 72
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->e:F

    .line 74
    invoke-virtual {p0, p0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 116
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 119
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    sget-object v0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->b:Ljava/lang/String;

    iget v1, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->f:F

    iget v2, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->g:F

    iget-object v3, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 88
    if-ne v2, v5, :cond_0

    .line 90
    iget v2, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->i:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->i:I

    .line 92
    :cond_0
    if-ne v3, v5, :cond_1

    .line 94
    iget v2, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->i:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->i:I

    .line 96
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->setMeasuredDimension(II)V

    .line 98
    int-to-float v1, v1

    iget v2, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->d:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iput v1, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->f:F

    .line 99
    int-to-float v0, v0

    iget v1, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->e:F

    add-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->g:F

    .line 100
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/my/target/core/ui/views/controls/AdInfoButton;->h:Ljava/lang/String;

    .line 55
    return-void
.end method
