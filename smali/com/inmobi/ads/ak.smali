.class public Lcom/inmobi/ads/ak;
.super Ljava/lang/Object;
.source "Placement.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/inmobi/ads/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ak;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "int"

    iput-object v0, p0, Lcom/inmobi/ads/ak;->f:Ljava/lang/String;

    .line 23
    iput-wide p1, p0, Lcom/inmobi/ads/ak;->b:J

    .line 24
    iput-object p3, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "int"

    iput-object v0, p0, Lcom/inmobi/ads/ak;->f:Ljava/lang/String;

    .line 67
    const-string v0, "placement_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/ak;->b:J

    .line 68
    const-string v0, "tp_key"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
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
    .line 39
    iget-object v0, p0, Lcom/inmobi/ads/ak;->d:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/inmobi/ads/ak;->e:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/inmobi/ads/ak;->d:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inmobi/ads/ak;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/inmobi/ads/ak;->b:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/inmobi/ads/ak;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    check-cast p1, Lcom/inmobi/ads/ak;

    .line 81
    iget-wide v2, p0, Lcom/inmobi/ads/ak;->b:J

    iget-wide v4, p1, Lcom/inmobi/ads/ak;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 88
    iget-object v0, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public f()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    const-string v1, "placement_id"

    iget-wide v2, p0, Lcom/inmobi/ads/ak;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    const-string v1, "last_accessed_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v1, "tp_key"

    iget-object v2, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/inmobi/ads/ak;->b:J

    iget-wide v2, p0, Lcom/inmobi/ads/ak;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 97
    iget-object v1, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 98
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/inmobi/ads/ak;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_0
    return v0
.end method
