.class abstract Lcom/inmobi/ads/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Lcom/inmobi/ads/g$a;
.implements Lcom/inmobi/commons/core/configs/b$b;
.implements Lcom/inmobi/rendering/RenderView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/AdUnit$AdState;,
        Lcom/inmobi/ads/AdUnit$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/AdUnit$AdState;

.field private c:Landroid/content/Context;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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

.field private g:Lcom/inmobi/ads/b;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Z

.field private l:Lcom/inmobi/ads/AdUnit$a;

.field private m:Lcom/inmobi/rendering/RenderView;

.field private n:Lcom/inmobi/ads/an;

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->k:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->p:J

    .line 88
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->c:Landroid/content/Context;

    .line 89
    iput-wide p2, p0, Lcom/inmobi/ads/AdUnit;->d:J

    .line 90
    iput-object p4, p0, Lcom/inmobi/ads/AdUnit;->l:Lcom/inmobi/ads/AdUnit$a;

    .line 91
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->x()V

    .line 92
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 93
    return-void
.end method

.method private x()V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    .line 298
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/configs/f;

    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/f;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 299
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 301
    new-instance v0, Lcom/inmobi/ads/an;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/an;-><init>(Lcom/inmobi/ads/AdUnit;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/an;

    .line 304
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 305
    return-void
.end method

.method private y()Lcom/inmobi/ads/h;
    .locals 4

    .prologue
    .line 312
    new-instance v0, Lcom/inmobi/ads/h;

    invoke-direct {v0}, Lcom/inmobi/ads/h;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->b(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Ljava/util/Map;)V

    .line 315
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/h;->a(J)V

    .line 316
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->c(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->l()Lcom/inmobi/ads/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/b;->a(Ljava/lang/String;)Lcom/inmobi/ads/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/b$a;)V

    .line 318
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->b(Ljava/util/Map;)V

    .line 319
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->d(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(I)V

    .line 322
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->e(Ljava/lang/String;)V

    .line 324
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/d;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->o()Lcom/inmobi/commons/core/configs/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a$a;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/commons/core/utilities/uid/d;)V

    .line 326
    return-object v0
.end method

.method private z()V
    .locals 4

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->u()V

    .line 413
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/an;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->l()Lcom/inmobi/ads/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->j()Lcom/inmobi/ads/b$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b$e;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/an;->sendEmptyMessageDelayed(IJ)Z

    .line 414
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Lcom/inmobi/ads/AdUnit$AdState;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    .line 135
    return-void
.end method

.method final a(Lcom/inmobi/ads/AdUnit$a;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->l:Lcom/inmobi/ads/AdUnit$a;

    .line 147
    return-void
.end method

.method public a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4

    .prologue
    .line 195
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad fetch failed. Status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 199
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_0

    .line 200
    const-string v0, "InternalError"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 206
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 211
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 212
    const-string v0, "NoFill"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_3

    .line 214
    const-string v0, "ServerError"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_4

    .line 216
    const-string v0, "NetworkUnreachable"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_5

    .line 218
    const-string v0, "AdActive"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_5
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_6

    .line 220
    const-string v0, "RequestPending"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_6
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_7

    .line 222
    const-string v0, "RequestInvalid"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_7
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_8

    .line 224
    const-string v0, "RequestTimedOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_8
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 226
    const-string v0, "EarlyRefreshRequest"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/a;)V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Ad fetch successful"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v0, "ParsingFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/h;)V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->o:J

    .line 331
    new-instance v0, Lcom/inmobi/ads/g;

    invoke-direct {v0, p1, p0}, Lcom/inmobi/ads/g;-><init>(Lcom/inmobi/ads/h;Lcom/inmobi/ads/g$a;)V

    invoke-virtual {v0}, Lcom/inmobi/ads/g;->a()V

    .line 332
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 3

    .prologue
    .line 82
    check-cast p1, Lcom/inmobi/ads/b;

    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    .line 83
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    .line 84
    invoke-virtual {v2}, Lcom/inmobi/ads/b;->m()Lorg/json/JSONObject;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 85
    return-void
.end method

.method public a(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 351
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Render view signaled ad ready"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public a(Lcom/inmobi/rendering/RenderView;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/rendering/RenderView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad reward action completed. Params:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/inmobi/ads/AdUnit$a;->b(Ljava/util/Map;)V

    .line 397
    return-void

    .line 395
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->e:Ljava/lang/String;

    .line 234
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
    .line 237
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/util/Map;

    .line 238
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/inmobi/ads/AdUnit;->k:Z

    .line 274
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "json"

    return-object v0
.end method

.method public b(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 356
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Render view signaled ad failed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "RenderFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public b(Lcom/inmobi/rendering/RenderView;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/rendering/RenderView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad interaction. Params:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/inmobi/ads/AdUnit$a;->a(Ljava/util/Map;)V

    .line 403
    return-void

    .line 401
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->p:J

    .line 287
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->z()V

    .line 289
    return-void
.end method

.method public b(Lcom/inmobi/ads/a;)Z
    .locals 8

    .prologue
    .line 154
    const-string v0, "pubContent"

    .line 155
    const/4 v0, 0x0

    .line 158
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/ads/AdUnit;->j:J

    .line 161
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 162
    const-string v2, "pubContent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    const-string v2, "@__imm_aft@"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/inmobi/ads/AdUnit;->o:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    const/4 v0, 0x1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v4, "Exception while parsing received ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    :catch_1
    move-exception v1

    .line 171
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v4, "Invalid Base64 encoding in received ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 362
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "RenderView completed loading ad content"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 439
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderTimeOut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    :cond_0
    const-string v1, "renderLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->p:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdLoadFailed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 447
    return-void
.end method

.method protected abstract d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
.end method

.method public d(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 367
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Renderview visible"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 451
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdShowFailed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 456
    return-void
.end method

.method protected e()Ljava/util/Map;
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
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 373
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Ad displayed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method protected f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->c:Landroid/content/Context;

    return-object v0
.end method

.method public f(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 378
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Ad dismissed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public g()Lcom/inmobi/ads/AdUnit$AdState;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    return-object v0
.end method

.method public g(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 407
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "User left application"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->d()V

    .line 409
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    return-object v0
.end method

.method i()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->j:J

    return-wide v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    .line 131
    return-void
.end method

.method protected final l()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    return-object v0
.end method

.method protected final m()Lcom/inmobi/ads/AdUnit$a;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->l:Lcom/inmobi/ads/AdUnit$a;

    return-object v0
.end method

.method protected final n()Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdLoadRequested"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 270
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_2

    .line 251
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v0, v4}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 252
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_3

    .line 257
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v0, v4}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 258
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 264
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    .line 266
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->i()V

    .line 267
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()V

    .line 268
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->s()V

    .line 269
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->y()Lcom/inmobi/ads/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/h;)V

    goto :goto_0
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->k:Z

    return v0
.end method

.method protected q()V
    .locals 4

    .prologue
    .line 281
    new-instance v0, Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/rendering/RenderingProperties;-><init>(Lcom/inmobi/rendering/RenderingProperties$PlacementType;)V

    invoke-direct {v0, v1, v2}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/rendering/RenderingProperties;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Lcom/inmobi/rendering/RenderView;

    .line 282
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->l()Lcom/inmobi/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->j()Lcom/inmobi/ads/b$e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->l()Lcom/inmobi/ads/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->k()Lcom/inmobi/ads/b$c;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/b$e;Lcom/inmobi/ads/b$c;)V

    .line 283
    return-void
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Lcom/inmobi/rendering/RenderView;

    const-string v1, "inmobi.recordEvent(120,null);"

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method s()V
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/c;->e()V

    .line 309
    return-void
.end method

.method protected t()V
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 339
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->removeAllViews()V

    .line 340
    if-eqz v0, :cond_0

    .line 343
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    :cond_0
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->destroy()V

    .line 347
    :cond_1
    return-void
.end method

.method protected u()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/an;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/an;->removeMessages(I)V

    .line 418
    return-void
.end method

.method protected v()V
    .locals 3

    .prologue
    .line 421
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Renderview timed out."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "RenderTimeOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 425
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 426
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 428
    :cond_0
    return-void
.end method

.method protected w()V
    .locals 6

    .prologue
    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 432
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v1, "renderLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->p:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdLoadSuccessful"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 435
    return-void
.end method
