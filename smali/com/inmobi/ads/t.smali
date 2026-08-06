.class Lcom/inmobi/ads/t;
.super Ljava/lang/Object;
.source "NativeStrandAssetStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/t$a;,
        Lcom/inmobi/ads/t$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/inmobi/ads/t$b;

.field protected b:Lcom/inmobi/ads/t$a;

.field protected c:F

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field private f:Landroid/graphics/Point;

.field private g:Landroid/graphics/Point;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/t;->f:Landroid/graphics/Point;

    .line 76
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/t;->g:Landroid/graphics/Point;

    .line 77
    sget-object v0, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    iput-object v0, p0, Lcom/inmobi/ads/t;->a:Lcom/inmobi/ads/t$b;

    .line 78
    sget-object v0, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    iput-object v0, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/t$a;

    .line 79
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/inmobi/ads/t;->c:F

    .line 80
    const-string v0, "#ff000000"

    iput-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/lang/String;

    .line 81
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/inmobi/ads/t;->e:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/t;->f:Landroid/graphics/Point;

    .line 90
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/t;->g:Landroid/graphics/Point;

    .line 91
    iput-object p5, p0, Lcom/inmobi/ads/t;->a:Lcom/inmobi/ads/t$b;

    .line 92
    iput-object p6, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/t$a;

    .line 93
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/inmobi/ads/t;->c:F

    .line 94
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p7, "#ff000000"

    :cond_0
    iput-object p7, p0, Lcom/inmobi/ads/t;->d:Ljava/lang/String;

    .line 95
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p8, "#00000000"

    :cond_1
    iput-object p8, p0, Lcom/inmobi/ads/t;->e:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/inmobi/ads/t;->f:Landroid/graphics/Point;

    return-object v0
.end method

.method public b()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/t;->g:Landroid/graphics/Point;

    return-object v0
.end method

.method public c()Lcom/inmobi/ads/t$b;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/inmobi/ads/t;->a:Lcom/inmobi/ads/t$b;

    return-object v0
.end method

.method public d()Lcom/inmobi/ads/t$a;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/t$a;

    return-object v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/inmobi/ads/t;->c:F

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/t;->e:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
