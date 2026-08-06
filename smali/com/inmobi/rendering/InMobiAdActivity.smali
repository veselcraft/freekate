.class public Lcom/inmobi/rendering/InMobiAdActivity;
.super Landroid/app/Activity;
.source "InMobiAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/InMobiAdActivity$c;,
        Lcom/inmobi/rendering/InMobiAdActivity$a;,
        Lcom/inmobi/rendering/InMobiAdActivity$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/InMobiAdActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/Integer;

.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/InMobiAdActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/lang/Integer;

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/RenderView;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/inmobi/rendering/RenderView;


# instance fields
.field private i:Lcom/inmobi/rendering/RenderView;

.field private j:Lcom/inmobi/rendering/RenderView;

.field private k:Lcom/inmobi/rendering/CustomView;

.field private l:Lcom/inmobi/rendering/CustomView;

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const-class v0, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    return-void
.end method

.method public static a(Landroid/content/Intent;Lcom/inmobi/rendering/InMobiAdActivity$a;)I
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    .line 109
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static a(Lcom/inmobi/rendering/InMobiAdActivity$c;)I
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    .line 129
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/inmobi/rendering/RenderView;)I
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 89
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 217
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    const/4 v2, 0x2

    const v3, 0xfffd

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 225
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Landroid/view/ViewGroup;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->setContentView(Landroid/view/View;)V

    .line 229
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 232
    .line 233
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    .line 236
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 242
    const v3, 0xfffd

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 243
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 244
    const v3, 0x108009a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 245
    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 246
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    const/high16 v3, 0x41c80000    # 25.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 255
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 257
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$1;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$1;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 277
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$2;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$2;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->BACK:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 296
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$3;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$3;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 320
    new-instance v0, Lcom/inmobi/rendering/InMobiAdActivity$4;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/InMobiAdActivity$4;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v0}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 336
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/inmobi/rendering/InMobiAdActivity$c;)V
    .locals 4

    .prologue
    .line 115
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-static {p1}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/InMobiAdActivity$c;)I

    move-result v0

    .line 120
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v0, "permissions"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/rendering/InMobiAdActivity;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/high16 v6, 0x42480000    # 50.0f

    const/4 v7, -0x1

    .line 340
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 341
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v3

    .line 344
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 345
    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 346
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 350
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v5, v6, v3

    float-to-int v5, v5

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    sget-object v6, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v5, p0, v3, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    iput-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    .line 354
    iget-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    const v6, 0xfffc

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 355
    iget-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    new-instance v6, Lcom/inmobi/rendering/InMobiAdActivity$5;

    invoke-direct {v6, p0}, Lcom/inmobi/rendering/InMobiAdActivity$5;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    sget-object v6, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v5, p0, v3, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    iput-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    .line 365
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    const v5, 0xfffb

    invoke-virtual {v3, v5}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 366
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    new-instance v5, Lcom/inmobi/rendering/InMobiAdActivity$6;

    invoke-direct {v5, p0}, Lcom/inmobi/rendering/InMobiAdActivity$6;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v5}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v3, 0xfffe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 376
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 380
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Z)V

    .line 384
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->c(Z)V

    .line 385
    return-void
.end method

.method public static b(Lcom/inmobi/rendering/RenderView;)V
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 97
    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove renderview with key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public static c(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 104
    sput-object p0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 105
    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    .line 432
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 404
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 405
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity$a;

    .line 406
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-interface {v0, p2, p3}, Lcom/inmobi/rendering/InMobiAdActivity$a;->a(ILandroid/content/Intent;)V

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    .line 410
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 411
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 436
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    .line 437
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->i()V

    .line 439
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->k()V

    .line 444
    :cond_2
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    goto :goto_0

    .line 445
    :cond_3
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 446
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    .line 447
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->l()V

    .line 214
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v4, 0x400

    const/16 v3, 0x66

    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    .line 139
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    new-instance v0, Lcom/inmobi/rendering/RenderView;

    new-instance v1, Lcom/inmobi/rendering/RenderingProperties;

    sget-object v2, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/RenderingProperties;-><init>(Lcom/inmobi/rendering/RenderingProperties$PlacementType;)V

    invoke-direct {v0, p0, v1}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/rendering/RenderingProperties;)V

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    .line 144
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/rendering/RenderView;->a:Lcom/inmobi/rendering/RenderView$a;

    .line 147
    :goto_0
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    if-nez v1, :cond_2

    new-instance v1, Lcom/inmobi/ads/b$e;

    invoke-direct {v1}, Lcom/inmobi/ads/b$e;-><init>()V

    .line 150
    :goto_1
    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    if-nez v2, :cond_3

    new-instance v2, Lcom/inmobi/ads/b$c;

    invoke-direct {v2}, Lcom/inmobi/ads/b$c;-><init>()V

    .line 153
    :goto_2
    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v4, v5}, Lcom/inmobi/rendering/RenderView;->setIsInAppBrowser(Z)V

    .line 154
    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v4, v0, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/b$e;Lcom/inmobi/ads/b$c;)V

    .line 155
    invoke-direct {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->a()V

    .line 156
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v3}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$a;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 158
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p0}, Lcom/inmobi/rendering/RenderView;->setFullScreenActivity(Landroid/app/Activity;)V

    .line 205
    :cond_0
    :goto_3
    return-void

    .line 144
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 146
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 149
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$e;

    move-result-object v1

    goto :goto_1

    .line 150
    :cond_3
    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 152
    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$c;

    move-result-object v2

    goto :goto_2

    .line 159
    :cond_4
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    if-ne v0, v3, :cond_7

    .line 160
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_RENDERVIEW_INDEX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_RENDERVIEW_INDEX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 162
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    .line 163
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_5

    .line 164
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find RenderView with key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto :goto_3

    .line 167
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_6

    .line 169
    invoke-virtual {p0, v5}, Lcom/inmobi/rendering/InMobiAdActivity;->requestWindowFeature(I)Z

    .line 170
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 173
    :cond_6
    invoke-direct {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->b()V

    .line 174
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p0}, Lcom/inmobi/rendering/RenderView;->setFullScreenActivity(Landroid/app/Activity;)V

    .line 175
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/rendering/InMobiAdActivity$b;->a()V

    goto/16 :goto_3

    .line 180
    :cond_7
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_9

    .line 181
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 182
    if-ne v1, v2, :cond_8

    .line 183
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    const-string v2, "Invalid Request Code Supplied for ACTIVITY_TYPE_FOR_RESULT"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 185
    :cond_8
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/InMobiAdActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 188
    :cond_9
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 190
    if-ne v0, v2, :cond_a

    .line 191
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    const-string v2, "Invalid Request Code Supplied for ACTIVITY_TYPE_PERMISSIONS_DIALOG"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 193
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 200
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->b()V

    .line 201
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 390
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    if-eqz v0, :cond_0

    .line 391
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 392
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$a;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 393
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->destroy()V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/rendering/InMobiAdActivity$b;->b()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    .line 415
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 421
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->c()V

    .line 422
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity$c;

    .line 423
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0, p1, p2, p3}, Lcom/inmobi/rendering/InMobiAdActivity$c;->a(I[Ljava/lang/String;[I)V

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 428
    return-void
.end method
