.class public final Lcom/yandex/mobile/ads/AdRequestError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/AdRequestError$Code;
    }
.end annotation


# static fields
.field static final a:Lcom/yandex/mobile/ads/AdRequestError;

.field static final b:Lcom/yandex/mobile/ads/AdRequestError;

.field static final c:Lcom/yandex/mobile/ads/AdRequestError;

.field static final d:Lcom/yandex/mobile/ads/AdRequestError;

.field static final e:Lcom/yandex/mobile/ads/AdRequestError;

.field static final f:Lcom/yandex/mobile/ads/AdRequestError;

.field static final g:Lcom/yandex/mobile/ads/AdRequestError;

.field static final h:Lcom/yandex/mobile/ads/AdRequestError;

.field static final i:Lcom/yandex/mobile/ads/AdRequestError;

.field static final j:Lcom/yandex/mobile/ads/AdRequestError;

.field static final k:Lcom/yandex/mobile/ads/AdRequestError;

.field static final l:Lcom/yandex/mobile/ads/AdRequestError;

.field static final m:Lcom/yandex/mobile/ads/AdRequestError;

.field static final n:Lcom/yandex/mobile/ads/AdRequestError;

.field static final o:Lcom/yandex/mobile/ads/AdRequestError;

.field static final p:Lcom/yandex/mobile/ads/AdRequestError;

.field static final q:Lcom/yandex/mobile/ads/AdRequestError;

.field static final r:Lcom/yandex/mobile/ads/AdRequestError;


# instance fields
.field private final s:I

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x0

    const v6, 0x4019999a    # 2.4f

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 21
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const/4 v1, 0x5

    const-string v2, "android.webkit.WebView database is inoperable"

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->a:Lcom/yandex/mobile/ads/AdRequestError;

    .line 26
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Ad was loaded successfully, but there is not enough space to display it"

    invoke-direct {v0, v4, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->b:Lcom/yandex/mobile/ads/AdRequestError;

    .line 31
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Internal state wasn\'t completely configured"

    invoke-direct {v0, v4, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->c:Lcom/yandex/mobile/ads/AdRequestError;

    .line 36
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Incorrect data in server response"

    invoke-direct {v0, v4, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->d:Lcom/yandex/mobile/ads/AdRequestError;

    .line 41
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Invalid server response code"

    invoke-direct {v0, v4, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->e:Lcom/yandex/mobile/ads/AdRequestError;

    .line 46
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Ad request failed with unexpected exception"

    invoke-direct {v0, v4, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->f:Lcom/yandex/mobile/ads/AdRequestError;

    .line 51
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Service temporarily unavailable"

    invoke-direct {v0, v4, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->g:Lcom/yandex/mobile/ads/AdRequestError;

    .line 56
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const/4 v1, 0x4

    const-string v2, "Ad request completed successfully, but there are no ads available"

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->h:Lcom/yandex/mobile/ads/AdRequestError;

    .line 61
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "No connection. Please check your internet connection"

    invoke-direct {v0, v3, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->i:Lcom/yandex/mobile/ads/AdRequestError;

    .line 66
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Ad request failed with network error"

    invoke-direct {v0, v3, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->j:Lcom/yandex/mobile/ads/AdRequestError;

    .line 71
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Provided block ID doesn\'t exist"

    invoke-direct {v0, v5, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->k:Lcom/yandex/mobile/ads/AdRequestError;

    .line 76
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Ad request configured incorrectly"

    invoke-direct {v0, v5, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->l:Lcom/yandex/mobile/ads/AdRequestError;

    .line 81
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Invalid Block ID"

    invoke-direct {v0, v5, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->m:Lcom/yandex/mobile/ads/AdRequestError;

    .line 86
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Invalid ad size"

    invoke-direct {v0, v5, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->n:Lcom/yandex/mobile/ads/AdRequestError;

    .line 91
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Yandex Metrica isn\'t initialized with API key"

    invoke-direct {v0, v5, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->o:Lcom/yandex/mobile/ads/AdRequestError;

    .line 96
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Incorrect AppMetrica Version. Minimum supported AppMetrica SDK Version is %s. Please, check your AppMetrica version."

    new-array v2, v4, [Ljava/lang/Object;

    .line 100
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    .line 98
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->p:Lcom/yandex/mobile/ads/AdRequestError;

    .line 103
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    const-string v1, "Incorrect AppMetrica Integration. Minimum supported AppMetrica SDK Version is %s. Please, check your AppMetrica integration."

    new-array v2, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    .line 105
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->q:Lcom/yandex/mobile/ads/AdRequestError;

    .line 110
    new-instance v0, Lcom/yandex/mobile/ads/AdRequestError;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/AdRequestError;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/AdRequestError;->r:Lcom/yandex/mobile/ads/AdRequestError;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    const-string v1, "Unknown error"

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    .line 156
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p1, p0, Lcom/yandex/mobile/ads/AdRequestError;->s:I

    .line 160
    iput-object p2, p0, Lcom/yandex/mobile/ads/AdRequestError;->t:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/yandex/mobile/ads/AdRequestError;->s:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdRequestError;->t:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "AdRequestError (code: %d, description: %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/yandex/mobile/ads/AdRequestError;->s:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yandex/mobile/ads/AdRequestError;->t:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
