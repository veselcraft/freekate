.class public Lcom/my/target/e$a;
.super Lcom/my/target/e;
.source "AdServiceBuilder.java"


# static fields
.field private static h:Ljava/lang/String; = "https://ad.mail.ru/mobile/"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/my/target/e;-><init>()V

    return-void
.end method

.method private c(Lcom/my/target/a;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/my/target/e$a;->b(Lcom/my/target/a;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/my/target/e$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/my/target/a;->getSlotId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    const-string v3, "UTF-8"

    .line 132
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 136
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_1
    const-string v3, "="

    if-eqz p2, :cond_1

    const-string p2, "?"

    .line 140
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "&"

    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/bz;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/my/target/e$a;->c(Lcom/my/target/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/my/target/bz;->q(Ljava/lang/String;)Lcom/my/target/bz;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/my/target/a;Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/my/target/a;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "formats"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adman_ver"

    const-string v2, "5.6.0"

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/my/target/common/MyTargetPrivacy;->isConsentSpecified()Z

    move-result v1

    const-string v2, "1"

    if-eqz v1, :cond_1

    .line 60
    invoke-static {}, Lcom/my/target/common/MyTargetPrivacy;->isUserConsent()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v3, "user_consent"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    invoke-static {}, Lcom/my/target/common/MyTargetPrivacy;->isUserAgeRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "user_age_restricted"

    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/my/target/a;->isAutoLoadVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "preloadvideo"

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/my/target/a;->getBannersCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4
    invoke-virtual {p1}, Lcom/my/target/a;->getBidId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "bid_id"

    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_5
    invoke-static {}, Lcom/my/target/common/MyTargetPrivacy;->isConsentSpecified()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/my/target/common/MyTargetPrivacy;->isUserConsent()Z

    move-result v1

    if-nez v1, :cond_6

    return-object v0

    .line 90
    :cond_6
    invoke-virtual {p1}, Lcom/my/target/a;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lcom/my/target/fj;->putDataTo(Ljava/util/Map;)V

    .line 92
    invoke-static {}, Lcom/my/target/fk;->dO()Lcom/my/target/fk;

    move-result-object v2

    .line 95
    :try_start_0
    invoke-virtual {v2}, Lcom/my/target/fk;->dP()Lcom/my/target/fi;

    move-result-object v3

    .line 96
    invoke-virtual {p1}, Lcom/my/target/a;->isTrackingEnvironmentEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/my/target/fi;->v(Z)V

    .line 97
    invoke-virtual {p1}, Lcom/my/target/a;->isTrackingLocationEnabled()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/my/target/fi;->w(Z)V

    .line 99
    invoke-virtual {v2, p2}, Lcom/my/target/fk;->collectData(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error collecting data: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 105
    :goto_1
    invoke-virtual {v2, v0}, Lcom/my/target/fj;->putDataTo(Ljava/util/Map;)V

    .line 106
    invoke-virtual {v1}, Lcom/my/target/common/CustomParams;->getLang()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p2, "lang"

    .line 109
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_7
    invoke-virtual {v1}, Lcom/my/target/common/CustomParams;->getMrgsId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p2, "mrgs_device_id"

    .line 114
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method
