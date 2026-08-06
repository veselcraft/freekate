.class final Lcom/inmobi/ads/s;
.super Lcom/inmobi/ads/AdUnit;
.source "NativeStrandAdUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/s$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Landroid/os/Handler;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/inmobi/ads/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J[Ljava/lang/Integer;Lcom/inmobi/ads/AdUnit$a;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/s;->d:Z

    .line 51
    iput-object p1, p0, Lcom/inmobi/ads/s;->b:Landroid/content/Context;

    .line 52
    invoke-static {p4}, Lcom/inmobi/ads/s;->a([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/s;->c:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/ads/s;->f:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/inmobi/ads/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method private B()I
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->b()I

    move-result v0

    return v0
.end method

.method private C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "NS-1.0.0-20160411"

    return-object v0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/inmobi/ads/s;->f:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/s$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/s$2;-><init>(Lcom/inmobi/ads/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/s;Lcom/inmobi/ads/q;)Lcom/inmobi/ads/q;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/inmobi/ads/s;->e:Lcom/inmobi/ads/q;

    return-object p1
.end method

.method private static a([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 145
    array-length v0, p0

    if-nez v0, :cond_0

    .line 146
    const-string v0, ""

    .line 152
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string v0, ""

    .line 149
    array-length v4, p0

    move v1, v2

    move-object v3, v0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v0, p0, v1

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/q;)V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/inmobi/ads/s;->f:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/s$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/s$1;-><init>(Lcom/inmobi/ads/s;Lcom/inmobi/ads/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/s;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/inmobi/ads/s;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/s;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inmobi/ads/s;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/s;Lcom/inmobi/ads/q;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/q;)V

    return-void
.end method

.method static synthetic c(Lcom/inmobi/ads/s;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/inmobi/ads/s;->D()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "inlban"

    return-object v0
.end method

.method public a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 87
    return-void
.end method

.method public a(Lcom/inmobi/ads/a;)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/inmobi/ads/s;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/s;->b(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/s;->a:Ljava/lang/String;

    const-string v2, "Ad fetch successful"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/inmobi/ads/s$a;

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/s$a;-><init>(Lcom/inmobi/ads/s;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/inmobi/ads/s$a;->start()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v0, "ParsingFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/s;->c(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->INLINE:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    return-object v0
.end method

.method protected e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    const-string v1, "a-adPositions"

    iget-object v2, p0, Lcom/inmobi/ads/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "a-parentViewWidth"

    invoke-direct {p0}, Lcom/inmobi/ads/s;->B()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "a-productVersion"

    invoke-direct {p0}, Lcom/inmobi/ads/s;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "trackerType"

    const-string v2, "url_ping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v0
.end method

.method public o()V
    .locals 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/inmobi/ads/s;->d:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/s;->a:Ljava/lang/String;

    const-string v2, "Ad unit is already destroyed! Returning ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->o()V

    goto :goto_0
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected t()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/inmobi/ads/s;->k()V

    .line 132
    return-void
.end method

.method public x()Lcom/inmobi/ads/q;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/inmobi/ads/s;->e:Lcom/inmobi/ads/q;

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/inmobi/ads/s;->e:Lcom/inmobi/ads/q;

    .line 93
    return-object v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/inmobi/ads/s;->d:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 99
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/s;->d:Z

    goto :goto_0
.end method

.method z()Z
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/s;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
