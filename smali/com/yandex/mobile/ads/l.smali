.class final Lcom/yandex/mobile/ads/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "actionURL"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/l;->a:Ljava/lang/String;

    .line 48
    const-string v0, "reportURL"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/j;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    const-string v0, "iconURL"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    const-string v0, "description"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/l;->b:Ljava/lang/String;

    .line 51
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yandex/mobile/ads/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
