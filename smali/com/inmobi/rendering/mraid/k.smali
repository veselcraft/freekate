.class public final Lcom/inmobi/rendering/mraid/k;
.super Ljava/lang/Object;
.source "MraidResizeProcessor.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/rendering/RenderView;

.field private c:Landroid/view/ViewGroup;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/rendering/mraid/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;F)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/high16 v3, 0x42480000    # 50.0f

    .line 95
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/mraid/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v2, v3, p2

    float-to-int v2, v2

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    const-string v2, "top-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bottom-right"

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    :cond_1
    const-string v2, "bottom-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bottom-left"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bottom-center"

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    :cond_2
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    :cond_3
    const-string v2, "bottom-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "top-center"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "center"

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    :cond_4
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    :cond_5
    const-string v2, "top-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    :cond_6
    return-object v1
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/k;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 120
    :cond_0
    const-string p1, "top-right"

    .line 131
    :cond_1
    :goto_0
    return-object p1

    .line 123
    :cond_2
    const-string v0, "top-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "top-right"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bottom-left"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bottom-right"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "top-center"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bottom-center"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "center"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const-string p1, "top-right"

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    .line 80
    new-instance v1, Lcom/inmobi/rendering/CustomView;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v1, v2, v0, v3}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 82
    const v2, 0xfffb

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 83
    new-instance v2, Lcom/inmobi/rendering/mraid/k$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/mraid/k$1;-><init>(Lcom/inmobi/rendering/mraid/k;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-direct {p0, p2, v0}, Lcom/inmobi/rendering/mraid/k;->a(Ljava/lang/String;F)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/inmobi/rendering/mraid/m;)V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 135
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    .line 136
    iget v1, p3, Lcom/inmobi/rendering/mraid/m;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 137
    iget v2, p3, Lcom/inmobi/rendering/mraid/m;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 138
    iget v3, p3, Lcom/inmobi/rendering/mraid/m;->d:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 139
    iget v4, p3, Lcom/inmobi/rendering/mraid/m;->e:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 141
    new-array v4, v6, [I

    .line 142
    new-array v5, v6, [I

    .line 144
    iget-object v6, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 145
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 147
    aget v6, v4, v9

    aget v7, v5, v9

    sub-int/2addr v6, v7

    aput v6, v4, v9

    .line 148
    aget v6, v4, v8

    aget v5, v5, v8

    sub-int v5, v6, v5

    aput v5, v4, v8

    .line 150
    aget v5, v4, v8

    add-int/2addr v3, v5

    aput v3, v4, v8

    .line 151
    aget v3, v4, v9

    add-int/2addr v0, v3

    aput v0, v4, v9

    .line 153
    iget-boolean v0, p3, Lcom/inmobi/rendering/mraid/m;->f:Z

    if-nez v0, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    aget v3, v4, v8

    sub-int/2addr v0, v3

    if-le v1, v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    aput v0, v4, v8

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    aget v3, v4, v9

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    aput v0, v4, v9

    .line 160
    :cond_1
    aget v0, v4, v8

    if-gez v0, :cond_2

    .line 161
    aput v8, v4, v8

    .line 163
    :cond_2
    aget v0, v4, v9

    if-gez v0, :cond_3

    .line 164
    aput v8, v4, v9

    .line 168
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    aget v1, v4, v8

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 170
    aget v1, v4, v9

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 171
    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void
.end method

.method private a(Lcom/inmobi/rendering/mraid/m;)V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 52
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    .line 53
    iget v1, p1, Lcom/inmobi/rendering/mraid/m;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 54
    iget v2, p1, Lcom/inmobi/rendering/mraid/m;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v2, v0

    .line 56
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 57
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v4}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v6}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    const v1, 0xfffe

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 64
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v5, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v1, p1, Lcom/inmobi/rendering/mraid/m;->a:Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/inmobi/rendering/mraid/k;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-direct {p0, v0, v3, p1}, Lcom/inmobi/rendering/mraid/k;->a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/inmobi/rendering/mraid/m;)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 75
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v3}, Lcom/inmobi/rendering/RenderView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    const v2, 0xffff

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 46
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/inmobi/rendering/mraid/k;->d:I

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    .line 32
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/mraid/k;->d:I

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/m;

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/k;->c()V

    .line 37
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/mraid/k;->a(Lcom/inmobi/rendering/mraid/m;)V

    .line 38
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 176
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0xfffe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 180
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    const v3, 0xffff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 182
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 183
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    iget v2, p0, Lcom/inmobi/rendering/mraid/k;->d:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    .line 187
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/inmobi/rendering/mraid/k;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->m()V

    .line 189
    return-void
.end method
