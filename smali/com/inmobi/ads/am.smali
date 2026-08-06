.class Lcom/inmobi/ads/am;
.super Lcom/inmobi/ads/ap;
.source "PollingVisibilityTracker.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/inmobi/ads/b$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/inmobi/ads/am;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/am;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/b$f;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/inmobi/ads/ap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/inmobi/ads/am;->c:Lcom/inmobi/ads/b$f;

    .line 19
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/ads/am;->c:Lcom/inmobi/ads/b$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$f;->c()I

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/inmobi/ads/am;->h()V

    .line 33
    return-void
.end method
