.class final Lcom/inmobi/ads/ai;
.super Ljava/lang/Object;
.source "NativeStrandTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ai$a;,
        Lcom/inmobi/ads/ai$b;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/ads/ai$b;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/inmobi/ads/ai$a;

.field private e:Ljava/util/Map;
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


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ai$b;Ljava/lang/String;ILcom/inmobi/ads/ai$a;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/ai$b;",
            "Ljava/lang/String;",
            "I",
            "Lcom/inmobi/ads/ai$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/ai$b;

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/inmobi/ads/ai;->c:I

    .line 41
    iput-object p4, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ai$a;

    .line 42
    iput-object p5, p0, Lcom/inmobi/ads/ai;->e:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/inmobi/ads/ai$a;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/inmobi/ads/ai$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v1, Lcom/inmobi/ads/ai$b;->b:Lcom/inmobi/ads/ai$b;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ai;-><init>(Lcom/inmobi/ads/ai$b;Ljava/lang/String;ILcom/inmobi/ads/ai$a;Ljava/util/Map;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/inmobi/ads/ai$a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ai$a;

    return-object v0
.end method

.method public c()Ljava/util/Map;
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
    .line 62
    iget-object v0, p0, Lcom/inmobi/ads/ai;->e:Ljava/util/Map;

    return-object v0
.end method
