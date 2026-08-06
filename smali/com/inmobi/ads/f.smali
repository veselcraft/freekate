.class final Lcom/inmobi/ads/f;
.super Ljava/lang/Object;
.source "AdNetworkResponse.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/network/c;

.field private b:Lcom/inmobi/ads/InMobiAdRequestStatus;

.field private c:Lcom/inmobi/ads/e;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/e;Lcom/inmobi/commons/core/network/c;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 17
    iput-object p2, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 19
    iget-object v0, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->c()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/inmobi/ads/f;->e()V

    .line 22
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/inmobi/ads/f$1;->a:[I

    iget-object v1, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->c()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 46
    :goto_0
    return-void

    .line 27
    :pswitch_0
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_0

    .line 30
    :pswitch_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_0

    .line 33
    :pswitch_2
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_0

    .line 40
    :pswitch_3
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/inmobi/ads/InMobiAdRequestStatus;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    return-object v0
.end method

.method public b()Lcom/inmobi/ads/e;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/inmobi/commons/core/network/NetworkError;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->c()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v0

    return-object v0
.end method
