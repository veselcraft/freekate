.class public Lcom/my/target/ads/MyTargetView;
.super Landroid/widget/RelativeLayout;
.source "MyTargetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/MyTargetView$AdSize;,
        Lcom/my/target/ads/MyTargetView$MyTargetViewListener;
    }
.end annotation


# instance fields
.field private ad:Lcom/my/target/core/facades/h;

.field private adListener:Lcom/my/target/core/facades/h$a;

.field private engine:Lcom/my/target/core/engines/b;

.field private isInitialized:Z

.field private listener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

.field private trackingEvironmentEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/ads/MyTargetView;->trackingEvironmentEnabled:Z

    .line 45
    new-instance v0, Lcom/my/target/ads/MyTargetView$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetView$1;-><init>(Lcom/my/target/ads/MyTargetView;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetView;->adListener:Lcom/my/target/core/facades/h$a;

    .line 98
    const-string v0, "AdView created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/ads/MyTargetView;->trackingEvironmentEnabled:Z

    .line 45
    new-instance v0, Lcom/my/target/ads/MyTargetView$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetView$1;-><init>(Lcom/my/target/ads/MyTargetView;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetView;->adListener:Lcom/my/target/core/facades/h$a;

    .line 104
    const-string v0, "AdView created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/ads/MyTargetView;->trackingEvironmentEnabled:Z

    .line 45
    new-instance v0, Lcom/my/target/ads/MyTargetView$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetView$1;-><init>(Lcom/my/target/ads/MyTargetView;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetView;->adListener:Lcom/my/target/core/facades/h$a;

    .line 110
    const-string v0, "AdView created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    return-object v0
.end method

.method static synthetic access$100(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/core/engines/b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    return-object v0
.end method

.method static synthetic access$102(Lcom/my/target/ads/MyTargetView;Lcom/my/target/core/engines/b;)Lcom/my/target/core/engines/b;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    return-object p1
.end method

.method static synthetic access$200(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/ads/MyTargetView$MyTargetViewListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->listener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    return-object v0
.end method

.method private checkInit()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetView;->isInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    .line 159
    :cond_0
    const-string v0, "AdView not initialized"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 29
    sput-boolean p0, Lcom/my/target/core/b;->a:Z

    .line 30
    if-eqz p0, :cond_0

    .line 31
    const-string v0, "Debug mode enabled"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetView;->isInitialized:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->f()V

    .line 190
    iput-object v1, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/ads/MyTargetView;->isInitialized:Z

    .line 193
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 194
    iput-object v1, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    .line 196
    :cond_1
    iput-object v1, p0, Lcom/my/target/ads/MyTargetView;->listener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    .line 197
    return-void
.end method

.method public getCustomParams()Lcom/my/target/ads/CustomParams;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/my/target/ads/MyTargetView;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->listener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    return-object v0
.end method

.method public init(I)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/my/target/ads/MyTargetView;->init(IZ)V

    .line 119
    return-void
.end method

.method public init(II)V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/my/target/ads/MyTargetView;->init(IIZ)V

    .line 129
    return-void
.end method

.method public init(IIZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 133
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetView;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "standard_320x50"

    .line 136
    if-ne p2, v4, :cond_2

    .line 138
    const-string v0, "standard_300x250"

    .line 144
    :cond_1
    :goto_1
    new-instance v1, Lcom/my/target/core/facades/h;

    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/my/target/core/facades/h;-><init>(ILjava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    .line 145
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    iget-boolean v1, p0, Lcom/my/target/ads/MyTargetView;->trackingEvironmentEnabled:Z

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->setTrackingEnvironmentEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    iget-object v1, p0, Lcom/my/target/ads/MyTargetView;->adListener:Lcom/my/target/core/facades/h$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 147
    iput-boolean v4, p0, Lcom/my/target/ads/MyTargetView;->isInitialized:Z

    .line 148
    const-string v0, "AdView initialized"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 141
    const-string v0, "standard_728x90"

    goto :goto_1
.end method

.method public init(IZ)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/my/target/ads/MyTargetView;->init(IIZ)V

    .line 124
    return-void
.end method

.method public load()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/my/target/ads/MyTargetView;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->load()V

    .line 154
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->a()V

    .line 176
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->b()V

    .line 181
    :cond_0
    return-void
.end method

.method public setListener(Lcom/my/target/ads/MyTargetView$MyTargetViewListener;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/my/target/ads/MyTargetView;->listener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    .line 84
    return-void
.end method

.method public setTrackingEnvironmentEnabled(Z)V
    .locals 1

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/my/target/ads/MyTargetView;->trackingEvironmentEnabled:Z

    .line 89
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->ad:Lcom/my/target/core/facades/h;

    invoke-virtual {v0, p1}, Lcom/my/target/core/facades/h;->setTrackingEnvironmentEnabled(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->d()V

    .line 166
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetView;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->c()V

    .line 171
    :cond_0
    return-void
.end method
