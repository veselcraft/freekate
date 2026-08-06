.class final Lcom/inmobi/ads/ac;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/ao$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ac$b;,
        Lcom/inmobi/ads/ac$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static i:Landroid/os/Handler;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/inmobi/ads/x;

.field private final d:Lcom/inmobi/ads/y;

.field private e:Lcom/inmobi/ads/ac$b;

.field private f:Lcom/inmobi/ads/ac$a;

.field private g:I

.field private h:Lcom/inmobi/ads/aj;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-class v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ac;->a:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/ads/ac;->i:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/x;Lcom/inmobi/ads/ac$b;Lcom/inmobi/ads/ac$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lcom/inmobi/ads/ac;->g:I

    .line 71
    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->j:Z

    .line 77
    iput-object p1, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/x;

    .line 79
    invoke-static {p1}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;)Lcom/inmobi/ads/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ac;->h:Lcom/inmobi/ads/aj;

    .line 80
    iput-object p3, p0, Lcom/inmobi/ads/ac;->e:Lcom/inmobi/ads/ac$b;

    .line 81
    iput-object p4, p0, Lcom/inmobi/ads/ac;->f:Lcom/inmobi/ads/ac$a;

    .line 82
    new-instance v0, Lcom/inmobi/ads/y;

    invoke-direct {v0, p2, p0}, Lcom/inmobi/ads/y;-><init>(Lcom/inmobi/ads/x;Lcom/inmobi/ads/ac;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->d:Lcom/inmobi/ads/y;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ac;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->j:Z

    return v0
.end method

.method private b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;
    .locals 8

    .prologue
    .line 136
    invoke-virtual {p3}, Lcom/inmobi/ads/v;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/inmobi/ads/NativeStrandAsset;

    .line 137
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-virtual {v6}, Lcom/inmobi/ads/NativeStrandAsset;->a()Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 138
    invoke-virtual {v6}, Lcom/inmobi/ads/NativeStrandAsset;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card_scrollable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/inmobi/ads/ac;->h:Lcom/inmobi/ads/aj;

    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    .line 140
    invoke-virtual {v0, v1, v6}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ao;

    move-object v1, v6

    .line 141
    check-cast v1, Lcom/inmobi/ads/v;

    iget-object v2, p0, Lcom/inmobi/ads/ac;->d:Lcom/inmobi/ads/y;

    iget v3, p0, Lcom/inmobi/ads/ac;->g:I

    .line 144
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->c()I

    move-result v4

    move-object v5, p0

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/v;Lcom/inmobi/ads/y;IILcom/inmobi/ads/ao$a;)V

    .line 147
    invoke-static {v6, p1}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/NativeStrandAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;)Lcom/inmobi/ads/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    .line 150
    invoke-virtual {v0, v1, v6}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v6

    .line 151
    check-cast v1, Lcom/inmobi/ads/v;

    invoke-direct {p0, v0, p1, v1}, Lcom/inmobi/ads/ac;->b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 153
    invoke-static {v6, p1}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/NativeStrandAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;)Lcom/inmobi/ads/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/view/View;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-static {v6, p1}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/NativeStrandAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {v6}, Lcom/inmobi/ads/NativeStrandAsset;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Lcom/inmobi/ads/ac$2;

    invoke-direct {v1, p0, v6}, Lcom/inmobi/ads/ac$2;-><init>(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/NativeStrandAsset;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 172
    :cond_3
    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/x;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/x;

    return-object v0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/inmobi/ads/ac;->g:I

    if-nez v0, :cond_0

    .line 177
    const v0, 0x800003

    .line 181
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v0}, Lcom/inmobi/ads/x;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/inmobi/ads/ac;->g:I

    if-ne v0, v1, :cond_1

    .line 179
    const v0, 0x800005

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/inmobi/ads/ac;->f:Lcom/inmobi/ads/ac$a;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/inmobi/ads/ac;->g:I

    return v0
.end method

.method public a(I)I
    .locals 2

    .prologue
    .line 124
    iput p1, p0, Lcom/inmobi/ads/ac;->g:I

    .line 125
    iget-object v0, p0, Lcom/inmobi/ads/ac;->e:Lcom/inmobi/ads/ac$b;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/inmobi/ads/ac;->e:Lcom/inmobi/ads/ac$b;

    iget-object v1, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/x;

    .line 127
    invoke-virtual {v1, p1}, Lcom/inmobi/ads/x;->a(I)Lcom/inmobi/ads/v;

    move-result-object v1

    .line 126
    invoke-interface {v0, p1, v1}, Lcom/inmobi/ads/ac$b;->a(ILcom/inmobi/ads/NativeStrandAsset;)V

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->c()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/ac;->b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/inmobi/ads/ac;->h:Lcom/inmobi/ads/aj;

    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    invoke-static {p2, p1}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/NativeStrandAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-object v0
.end method

.method public a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;
    .locals 3

    .prologue
    .line 87
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/ac;->h:Lcom/inmobi/ads/aj;

    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/x;

    .line 88
    invoke-virtual {v2}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ag;

    .line 90
    :goto_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ag;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/ads/aj;->a(Landroid/content/Context;)Lcom/inmobi/ads/aj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/aj;->a(Landroid/view/ViewGroup;)V

    .line 92
    iget-object v1, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v1}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/v;->b()Lcom/inmobi/ads/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/aj;->a(Landroid/view/View;Lcom/inmobi/ads/t;)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v1}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/NativeStrandAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    sget-object v1, Lcom/inmobi/ads/ac;->i:Landroid/os/Handler;

    new-instance v2, Lcom/inmobi/ads/ac$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/inmobi/ads/ac$1;-><init>(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-object v0

    :cond_1
    move-object v0, p1

    .line 88
    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/inmobi/ads/ac;->h:Lcom/inmobi/ads/aj;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/aj;->a(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->j:Z

    .line 195
    iget-object v0, p0, Lcom/inmobi/ads/ac;->d:Lcom/inmobi/ads/y;

    invoke-virtual {v0}, Lcom/inmobi/ads/y;->a()V

    .line 196
    return-void
.end method
