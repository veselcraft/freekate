.class public Lcom/yandex/mobile/ads/video/parser/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/video/parser/a$b;,
        Lcom/yandex/mobile/ads/video/parser/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/video/models/ad/Creative;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/yandex/mobile/ads/video/models/ad/Creative;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    const-string v1, "VideoClicks"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 402
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 405
    const-string v2, "ClickThrough"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    const-string v1, "ClickThrough"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 407
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_1
    const-string v2, "ClickTracking"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    const-string v1, "ClickTracking"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 410
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    const-string v2, "addTrackingEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clickTracking"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {p1, v2, v3}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 415
    :cond_2
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 420
    :cond_3
    return-object v0
.end method

.method private static a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, p3, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/video/models/ad/VideoAd;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 199
    new-instance v0, Lcom/yandex/mobile/ads/video/parser/a$a;

    invoke-direct {v0, p1, p0, v5}, Lcom/yandex/mobile/ads/video/parser/a$a;-><init>(Lcom/yandex/mobile/ads/video/models/ad/VideoAd;Lorg/xmlpull/v1/XmlPullParser;B)V

    .line 201
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string v2, "Impression"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-string v1, "Impression"

    const-string v2, "addImpression"

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a$a;->a(Lcom/yandex/mobile/ads/video/parser/a$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v2, "Error"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const-string v1, "Error"

    const-string v2, "addError"

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a$a;->a(Lcom/yandex/mobile/ads/video/parser/a$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    const-string v2, "Survey"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    const-string v1, "Survey"

    const-string v2, "setSurvey"

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a$a;->a(Lcom/yandex/mobile/ads/video/parser/a$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    const-string v2, "Description"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    const-string v1, "Description"

    const-string v2, "setDescription"

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a$a;->a(Lcom/yandex/mobile/ads/video/parser/a$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_3
    const-string v2, "AdTitle"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    const-string v1, "AdTitle"

    const-string v2, "setAdTitle"

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a$a;->a(Lcom/yandex/mobile/ads/video/parser/a$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_4
    const-string v2, "AdSystem"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 213
    const-string v1, "AdSystem"

    const-string v2, "setAdSystem"

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a$a;->a(Lcom/yandex/mobile/ads/video/parser/a$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_5
    const-string v0, "Creatives"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 215
    const-string v0, "addCreatives"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Creatives"

    invoke-static {p0, v3}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Creative"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yandex/mobile/ads/video/models/ad/Creative;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_8
    aput-object v2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 217
    :cond_9
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yandex/mobile/ads/video/models/ad/VideoAd;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;

    .line 151
    const-string v1, "Ad"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v2, "InLine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;

    const-string v1, "InLine"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/video/parser/a;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/video/models/ad/VideoAd;)V

    goto :goto_0

    .line 157
    :cond_2
    const-string v2, "Wrapper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;

    const-string v1, "Wrapper"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VASTAdTagURI"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "VASTAdTagURI"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setVastAdTagUri"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/video/parser/a;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/video/models/ad/VideoAd;)V

    goto :goto_1

    .line 163
    :cond_5
    return-object v0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 606
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yandex/mobile/ads/video/models/ad/Creative;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 243
    .line 245
    const-string v0, "Creative"

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 246
    const-string v0, "id"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 247
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 248
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 250
    const-string v4, "Linear"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 251
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/Creative;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Creative;

    if-eqz v0, :cond_0

    const-string v3, "Linear"

    invoke-static {p0, v3}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string v3, "setId"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v9

    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Duration"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "Duration"

    invoke-static {p0, v3}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string v3, "setDurationHHMMSS"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v4, "TrackingEvents"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "addTrackingEvents"

    new-array v4, v10, [Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "TrackingEvents"

    invoke-static {p0, v6}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Tracking"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "Tracking"

    invoke-static {p0, v6}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string v6, "event"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_5
    aput-object v5, v4, v9

    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v4, "MediaFiles"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "addMediaFiles"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->f(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    const-string v4, "VideoClicks"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v3, "addClickThroughUrls"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/video/parser/a;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/video/models/ad/Creative;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    const-string v4, "Icons"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "addIcons"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 253
    :cond_a
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 258
    :cond_b
    return-object v0
.end method

.method private static d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Icon;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    const-string v1, "Icons"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v2, "Icon"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yandex/mobile/ads/video/models/ad/Icon;

    move-result-object v1

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 330
    :cond_2
    return-object v0
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yandex/mobile/ads/video/models/ad/Icon;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/Icon;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Icon;

    .line 335
    const-string v1, "Icon"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 337
    const-string v1, "program"

    const-string v2, "setProgram"

    invoke-static {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "height"

    const-string v2, "setHeight"

    invoke-static {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v1, "width"

    const-string v2, "setWidth"

    invoke-static {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v1, "xPosition"

    const-string v2, "setHorizontalPosition"

    invoke-static {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "yPosition"

    const-string v2, "setVerticalPosition"

    invoke-static {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "apiFramework"

    const-string v2, "setApiFramework"

    invoke-static {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "offset"

    const-string v2, "setOffset"

    invoke-static {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "duration"

    const-string v2, "setDuration"

    invoke-static {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v1}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 352
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    .line 353
    const-string v3, "setResourceType"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    const-string v1, "setResourceUrl"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v0, v1, v3}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 359
    :cond_1
    return-object v0
.end method

.method private static f(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/MediaFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    const-string v0, "MediaFiles"

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 366
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string v2, "MediaFile"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;

    const-string v2, "MediaFile"

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string v2, "id"

    const-string v3, "setId"

    invoke-static {v0, p0, v2, v3}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "delivery"

    const-string v3, "setDeliveryMethod"

    invoke-static {v0, p0, v2, v3}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "height"

    const-string v3, "setHeight"

    invoke-static {v0, p0, v2, v3}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "width"

    const-string v3, "setWidth"

    invoke-static {v0, p0, v2, v3}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bitrate"

    const-string v3, "setBitrate"

    invoke-static {v0, p0, v2, v3}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const-string v3, "setMimeType"

    invoke-static {v0, p0, v2, v3}, Lcom/yandex/mobile/ads/video/parser/a;->a(Ljava/lang/Object;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "setUri"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 378
    :cond_2
    return-object v1
.end method

.method private static g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    const-string v1, "Blocks"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 510
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 513
    const-string v2, "Block"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;

    move-result-object v1

    .line 515
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    :cond_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 522
    :cond_2
    return-object v0
.end method

.method private static h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 526
    const-class v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;

    .line 527
    const-string v1, "Block"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 529
    const-string v1, "type"

    invoke-interface {p0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    const-string v2, "setType"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    const-string v1, "BlockID"

    invoke-interface {p0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    const-string v2, "setId"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 536
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 538
    const-string v2, "StartTime"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    const-string v1, "setStartTime"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 540
    :cond_1
    const-string v2, "Duration"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    const-string v1, "setDuration"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 542
    :cond_2
    const-string v2, "PositionsCount"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 543
    const-string v1, "setPositionsCount"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 545
    :cond_3
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 550
    :cond_4
    return-object v0
.end method

.method private static i(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 564
    :cond_0
    const/4 v0, 0x1

    .line 565
    :goto_0
    if-eqz v0, :cond_1

    .line 566
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 571
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 569
    goto :goto_0

    .line 575
    :cond_1
    return-void

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 586
    const-string v0, ""

    .line 588
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 589
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 593
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/VideoAd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 132
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 133
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 134
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 135
    const-string v2, "VAST"

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-static {v1}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-static {v1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yandex/mobile/ads/video/models/ad/VideoAd;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 441
    const-class v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    .line 443
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 444
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 445
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 446
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 447
    const-string v2, "Blocksinfo"

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/video/parser/a;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 449
    new-instance v2, Lcom/yandex/mobile/ads/video/parser/a$b;

    invoke-direct {v2, v0, v1, v6}, Lcom/yandex/mobile/ads/video/parser/a$b;-><init>(Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;Lorg/xmlpull/v1/XmlPullParser;B)V

    .line 451
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/yandex/mobile/ads/video/parser/a;->l(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 452
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-static {v1}, Lcom/yandex/mobile/ads/video/parser/a;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    const-string v4, "Version"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    const-string v3, "Version"

    const-string v4, "setVersion"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_1
    const-string v4, "PartnerID"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    const-string v3, "PartnerID"

    const-string v4, "setPartnerId"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_2
    const-string v4, "SessionID"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    const-string v3, "SessionID"

    const-string v4, "setSessionId"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_3
    const-string v4, "CategoryID"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 461
    const-string v3, "CategoryID"

    const-string v4, "setCategoryId"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_4
    const-string v4, "CategoryName"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 463
    const-string v3, "CategoryName"

    const-string v4, "setCategoryName"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_5
    const-string v4, "Skin"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 465
    const-string v3, "Skin"

    const-string v4, "setSkin"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_6
    const-string v4, "VPAIDEnabled"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 467
    const-string v3, "VPAIDEnabled"

    const-string v4, "setVPaidEnabled"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_7
    const-string v4, "BufferEmptyLimit"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 469
    const-string v3, "BufferEmptyLimit"

    const-string v4, "setBufferEmptyLimit"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_8
    const-string v4, "Title"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 471
    const-string v3, "Title"

    const-string v4, "setTitle"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    :cond_9
    const-string v4, "SkipDelay"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 473
    const-string v3, "SkipDelay"

    const-string v4, "setSkipDelay"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    :cond_a
    const-string v4, "SkinTimeout"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 475
    const-string v3, "SkinTimeout"

    const-string v4, "setSkinTimeout"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :cond_b
    const-string v4, "VPAIDTimeout"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 477
    const-string v3, "VPAIDTimeout"

    const-string v4, "setVpaidTimeout"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_c
    const-string v4, "WrapperTimeout"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 479
    const-string v3, "WrapperTimeout"

    const-string v4, "setWrapperTimeout"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_d
    const-string v4, "VideoTimeout"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 481
    const-string v3, "VideoTimeout"

    const-string v4, "setVideoTimeout"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_e
    const-string v4, "VASTTimeout"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 483
    const-string v3, "VASTTimeout"

    const-string v4, "setVastTimeout"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :cond_f
    const-string v4, "TimeLeftShow"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 485
    const-string v3, "TimeLeftShow"

    const-string v4, "setShowTimeLeft"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 486
    :cond_10
    const-string v4, "SkipTimeLeftShow"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 487
    const-string v3, "SkipTimeLeftShow"

    const-string v4, "setShowSkipTimeLeft"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :cond_11
    const-string v4, "BufferFullTimeout"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 489
    const-string v3, "BufferFullTimeout"

    const-string v4, "setBufferFullTimeout"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    :cond_12
    const-string v4, "WrapperMaxCount"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 491
    const-string v3, "WrapperMaxCount"

    const-string v4, "setWrapperMaxCount"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    :cond_13
    const-string v4, "FirstBuffTimeout"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 493
    const-string v3, "FirstBuffTimeout"

    const-string v4, "setFirstBuffTimeout"

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/video/parser/a$b;->a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_14
    const-string v4, "Blocks"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 495
    invoke-static {v1}, Lcom/yandex/mobile/ads/video/parser/a;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 496
    const-string v4, "addBlocks"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v0, v4, v5}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 498
    :cond_15
    invoke-static {v1}, Lcom/yandex/mobile/ads/video/parser/a;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 503
    :cond_16
    return-object v0
.end method
