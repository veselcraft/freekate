.class public Lcom/my/target/core/parsers/rb/b;
.super Ljava/lang/Object;
.source "RBBannerParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/banners/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/my/target/core/models/sections/i;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/my/target/core/models/banners/d;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 67
    const-string v0, "Parsing banner"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Banner_id = \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "bannerID"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 70
    const-class v0, Lcom/my/target/core/parsers/rb/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    .line 72
    const-string v0, "id"

    const-string v2, ""

    invoke-static {p0, v0, v2, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const-string v0, "bannerID"

    const-string v2, ""

    invoke-static {p0, v0, v2, v5, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    const-string v2, "type"

    const-string v3, ""

    invoke-static {p0, v2, v3, v5, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v6, v1

    .line 183
    :goto_0
    return-object v6

    .line 87
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v6, v1

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {p1, v0}, Lcom/my/target/core/models/sections/i;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v6, v1

    goto :goto_0

    .line 94
    :cond_3
    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/my/target/core/factories/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v6

    .line 96
    if-nez v6, :cond_4

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mismatch for banner type <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, banner id <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">, section type <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MismatchBannerType"

    .line 98
    invoke-static {v0, v2, p4}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object v6, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_4
    const-string v0, "bundle_id"

    const-string v2, ""

    invoke-static {p0, v0, v2, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 108
    invoke-interface {v6, v0}, Lcom/my/target/core/models/banners/d;->setBundleId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    invoke-interface {v6, v5}, Lcom/my/target/core/models/banners/d;->setAppInstalled(Z)V

    .line 116
    :cond_5
    invoke-static {v6, p0, p1, p4}, Lcom/my/target/core/parsers/rb/b;->e(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    .line 118
    instance-of v0, v6, Lcom/my/target/core/models/banners/j;

    if-eqz v0, :cond_7

    .line 1958
    const-string v0, "Parsing standard banner"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    move-object v0, v6

    .line 1960
    check-cast v0, Lcom/my/target/core/models/banners/j;

    .line 1961
    const-string v2, "title"

    const-string v3, ""

    .line 1962
    invoke-static {p0, v2, v3, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1961
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->e(Ljava/lang/String;)V

    .line 1964
    const-string v2, "description"

    const-string v3, ""

    .line 1965
    invoke-static {p0, v2, v3, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1964
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->b(Ljava/lang/String;)V

    .line 1967
    const-string v2, "disclaimer"

    const-string v3, ""

    .line 1968
    invoke-static {p0, v2, v3, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1967
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->c(Ljava/lang/String;)V

    .line 1970
    const-string v2, "votes"

    .line 1971
    invoke-static {p0, v2, v4, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v2

    .line 1970
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->a(I)V

    .line 1973
    const-string v2, "category"

    const-string v3, ""

    .line 1974
    invoke-static {p0, v2, v3, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1973
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->a(Ljava/lang/String;)V

    .line 1976
    const-string v2, "domain"

    const-string v3, ""

    .line 1977
    invoke-static {p0, v2, v3, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1976
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->d(Ljava/lang/String;)V

    .line 1980
    const-string v2, "iconLink"

    const-string v3, "iconHeight"

    const-string v4, "iconWidth"

    invoke-static {p0, v2, v3, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1985
    const-string v2, "rating"

    .line 1986
    invoke-static {p0, v2, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)F

    move-result v2

    .line 1985
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->a(F)V

    .line 1989
    const-string v2, "imageLink"

    const-string v3, "imageHeight"

    const-string v4, "imageWidth"

    invoke-static {p0, v2, v3, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1993
    const-string v2, "mainImageLink"

    const-string v3, "mainImageHeight"

    const-string v4, "mainImageWidth"

    invoke-static {p0, v2, v3, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/j;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1999
    invoke-interface {v6}, Lcom/my/target/core/models/banners/d;->getTimeout()I

    move-result v0

    if-gtz v0, :cond_6

    const-string v0, "standard"

    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2001
    check-cast p1, Lcom/my/target/core/models/sections/j;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/j;->k()I

    move-result v0

    invoke-interface {v6, v0}, Lcom/my/target/core/models/banners/d;->setTimeout(I)V

    .line 122
    :cond_6
    const-string v0, "banner"

    invoke-interface {v6}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v6

    check-cast v0, Lcom/my/target/core/models/banners/j;

    .line 123
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->f()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-nez v0, :cond_9

    .line 125
    const-string v0, "Banner with type \'banner\' has no image"

    const-string v2, "No image in banner"

    invoke-static {v0, v2, p4}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object v6, v1

    .line 128
    goto/16 :goto_0

    .line 132
    :cond_7
    instance-of v0, v6, Lcom/my/target/core/models/banners/b;

    if-eqz v0, :cond_a

    .line 2865
    const-string v0, "Parsing appwall banner"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    move-object v0, v6

    .line 2867
    check-cast v0, Lcom/my/target/core/models/banners/b;

    .line 2868
    const-string v1, "hasNotification"

    .line 2869
    invoke-static {p0, v1, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 2868
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->a(Z)V

    .line 2871
    const-string v1, "Banner"

    .line 2872
    invoke-static {p0, v1, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 2871
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->e(Z)V

    .line 2874
    const-string v1, "bubble_id"

    const-string v2, ""

    .line 2875
    invoke-static {p0, v1, v2, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2874
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->c(Ljava/lang/String;)V

    .line 2877
    const-string v1, "RequireCategoryHighlight"

    .line 2878
    invoke-static {p0, v1, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 2877
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->c(Z)V

    .line 2881
    const-string v1, "icon_hd"

    .line 2882
    invoke-static {p0, v1, p4}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 2881
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2884
    const-string v1, "ItemHighlight"

    .line 2885
    invoke-static {p0, v1, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 2884
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->d(Z)V

    .line 2887
    const-string v1, "Main"

    invoke-static {p0, v1, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->b(Z)V

    .line 2889
    const-string v1, "mrgs_id"

    .line 2890
    invoke-static {p0, v1, v4, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v1

    .line 2889
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->a(I)V

    .line 2892
    const-string v1, "votes"

    .line 2893
    invoke-static {p0, v1, v4, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v1

    .line 2892
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->b(I)V

    .line 2895
    const-string v1, "rating"

    .line 2896
    invoke-static {p0, v1, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)F

    move-result v1

    .line 2895
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->a(F)V

    .line 2897
    const-string v1, "RequireWifi"

    .line 2898
    invoke-static {p0, v1, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 2897
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->f(Z)V

    .line 2900
    const-string v1, "title"

    const-string v2, ""

    .line 2901
    invoke-static {p0, v1, v2, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2900
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->a(Ljava/lang/String;)V

    .line 2903
    const-string v1, "description"

    const-string v2, ""

    .line 2904
    invoke-static {p0, v1, v2, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2903
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->b(Ljava/lang/String;)V

    .line 2906
    const-string v1, "labelType"

    const-string v2, ""

    .line 2907
    invoke-static {p0, v1, v2, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2906
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->d(Ljava/lang/String;)V

    .line 2909
    const-string v1, "status"

    const-string v2, ""

    .line 2910
    invoke-static {p0, v1, v2, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2909
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->e(Ljava/lang/String;)V

    .line 2912
    const-string v1, "paidType"

    const-string v2, ""

    .line 2913
    invoke-static {p0, v1, v2, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2912
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->f(Ljava/lang/String;)V

    .line 2915
    const-string v1, "subitem"

    .line 2916
    invoke-static {p0, v1, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 2915
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->g(Z)V

    .line 2918
    const-string v1, "coins"

    .line 2919
    invoke-static {p0, v1, v4, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v1

    .line 2918
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->c(I)V

    .line 2921
    const-string v1, "coins_icon_hd"

    .line 2922
    invoke-static {p0, v1, p4}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 2921
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2924
    const-string v1, "coins_icon_bgcolor"

    const v2, -0x86de2

    .line 2925
    invoke-static {p0, v1, v2, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 2924
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->d(I)V

    .line 2927
    const-string v1, "coins_icon_textcolor"

    .line 2928
    invoke-static {p0, v1, v8, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 2927
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->e(I)V

    .line 2930
    const-string v1, "cross_notif_icon_hd"

    .line 2931
    invoke-static {p0, v1, p4}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 2930
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->h(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2934
    const-string v1, "appwall"

    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2936
    check-cast p1, Lcom/my/target/core/models/sections/b;

    .line 2937
    new-instance v1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->f(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2940
    new-instance v1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    .line 2941
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->e(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2943
    new-instance v1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->d(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2946
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/my/target/core/models/sections/b;->o(Ljava/lang/String;)Lcom/my/target/core/models/g;

    move-result-object v1

    .line 2947
    if-eqz v1, :cond_8

    .line 2948
    new-instance v2, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v1}, Lcom/my/target/core/models/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/b;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2950
    :cond_8
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->isItemHighlight()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2951
    new-instance v1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->g(Lcom/my/target/nativeads/models/ImageData;)V

    .line 181
    :cond_9
    :goto_1
    invoke-static {v6, p0, p4}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 136
    :cond_a
    instance-of v0, v6, Lcom/my/target/core/models/banners/f;

    if-eqz v0, :cond_d

    .line 138
    invoke-static {v6, p0, p1, p4}, Lcom/my/target/core/parsers/rb/b;->d(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    move-object v0, v6

    .line 139
    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 140
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v2

    move-object v0, v6

    .line 141
    check-cast v0, Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v0

    .line 143
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_b
    if-eqz v0, :cond_c

    .line 144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    :cond_c
    const-string v0, "No images in FSImageBanner"

    const-string v2, "Required field absence"

    invoke-static {v0, v2, p4}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object v6, v1

    .line 148
    goto/16 :goto_0

    .line 151
    :cond_d
    instance-of v0, v6, Lcom/my/target/core/models/banners/g;

    if-eqz v0, :cond_11

    const-string v0, "fullscreen"

    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3683
    const-string v0, "Parsing fs promo banner"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    move-object v7, v6

    .line 3685
    check-cast v7, Lcom/my/target/core/models/banners/g;

    .line 3686
    const-string v0, "title"

    const-string v1, ""

    .line 3687
    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3686
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->f(Ljava/lang/String;)V

    .line 3689
    const-string v0, "description"

    const-string v1, ""

    .line 3690
    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3689
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->b(Ljava/lang/String;)V

    .line 3692
    const-string v0, "disclaimer"

    const-string v1, ""

    .line 3693
    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3692
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->c(Ljava/lang/String;)V

    .line 3695
    const-string v0, "votes"

    .line 3696
    invoke-static {p0, v0, v4, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    .line 3695
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->f(I)V

    .line 3698
    const-string v0, "category"

    const-string v1, ""

    .line 3699
    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3698
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->a(Ljava/lang/String;)V

    .line 3701
    const-string v0, "rating"

    .line 3702
    invoke-static {p0, v0, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)F

    move-result v0

    .line 3701
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->b(F)V

    .line 3703
    const-string v0, "domain"

    const-string v1, ""

    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->d(Ljava/lang/String;)V

    .line 3705
    const-string v0, "subcategory"

    const-string v1, ""

    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->e(Ljava/lang/String;)V

    .line 3708
    const-string v0, "iconLink"

    const-string v1, "iconHeight"

    const-string v2, "iconWidth"

    invoke-static {p0, v0, v1, v2, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->d(Lcom/my/target/nativeads/models/ImageData;)V

    .line 3715
    const-string v0, "imageLink"

    const-string v1, "imageHeight"

    const-string v2, "imageWidth"

    invoke-static {p0, v0, v1, v2, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->e(Lcom/my/target/nativeads/models/ImageData;)V

    .line 3722
    const-string v0, "finalLink"

    const-string v1, ""

    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->setFinalLink(Ljava/lang/String;)V

    .line 3725
    const-string v0, "footerColor"

    const v1, -0x999a

    .line 3726
    invoke-static {p0, v0, v1, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 3725
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->a(I)V

    .line 3728
    const-string v0, "ctaButtonColor"

    const v1, -0xff540e

    .line 3729
    invoke-static {p0, v0, v1, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 3728
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->b(I)V

    .line 3731
    const-string v0, "ctaButtonTouchColor"

    const v1, -0xff8957

    .line 3732
    invoke-static {p0, v0, v1, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 3731
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->c(I)V

    .line 3734
    const-string v0, "ctaButtonTextColor"

    .line 3735
    invoke-static {p0, v0, v8, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 3734
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->d(I)V

    move-object v8, p1

    .line 3738
    check-cast v8, Lcom/my/target/core/models/sections/d;

    .line 3740
    const-string v0, "style"

    .line 3742
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/d;->o()I

    move-result v1

    .line 3741
    invoke-static {p0, v0, v1, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    .line 3740
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->e(I)V

    .line 3744
    const-string v1, "allowCloseDelay"

    .line 3746
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/d;->i()F

    move-result v0

    float-to-double v2, v0

    move-object v0, p0

    move-object v5, p4

    .line 3744
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->a(F)V

    .line 3749
    const-string v0, "close_icon_hd"

    invoke-static {p0, v0, p4}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 3751
    if-nez v0, :cond_e

    invoke-virtual {v8}, Lcom/my/target/core/models/sections/d;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 3752
    :cond_e
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 3754
    const-string v0, "play_icon_hd"

    invoke-static {p0, v0, p4}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 3756
    if-nez v0, :cond_f

    invoke-virtual {v8}, Lcom/my/target/core/models/sections/d;->l()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 3757
    :cond_f
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 3759
    const-string v0, "store_icon_hd"

    invoke-static {p0, v0, p4}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 3762
    if-nez v0, :cond_10

    .line 3763
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/d;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 3764
    :cond_10
    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 3766
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/d;->u()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->a(Z)V

    .line 3767
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/d;->t()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->b(Z)V

    .line 3769
    const-string v0, "video"

    invoke-static {p0, v0, v4, p4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3772
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 3775
    invoke-interface {v6}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video"

    const-string v3, "video"

    invoke-static {v0, v2, v3}, Lcom/my/target/core/factories/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    .line 3777
    instance-of v2, v0, Lcom/my/target/core/models/banners/m;

    if-eqz v2, :cond_9

    .line 3779
    invoke-static {v0, v1, p1, p4}, Lcom/my/target/core/parsers/rb/b;->e(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    .line 3780
    invoke-static {v0, v1, p1, p4}, Lcom/my/target/core/parsers/rb/b;->b(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3784
    invoke-static {v0, v1, p4}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 3785
    check-cast v0, Lcom/my/target/core/models/banners/m;

    invoke-virtual {v7, v0}, Lcom/my/target/core/models/banners/g;->a(Lcom/my/target/core/models/banners/m;)V

    goto/16 :goto_1

    .line 156
    :cond_11
    instance-of v0, v6, Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_12

    .line 158
    invoke-static {v6, p0, p1, p4}, Lcom/my/target/core/parsers/rb/b;->c(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 159
    :cond_12
    const-string v0, "instreamads"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 161
    const-string v0, "video"

    invoke-interface {v6}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "statistics"

    .line 162
    invoke-interface {v6}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 164
    :cond_13
    invoke-static {v6, p0, p1, p4}, Lcom/my/target/core/parsers/rb/b;->b(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v6, v1

    .line 166
    goto/16 :goto_0

    .line 169
    :cond_14
    const-string v0, "instreamaudioads"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 171
    const-string v0, "audio"

    invoke-interface {v6}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "statistics"

    .line 172
    invoke-interface {v6}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    :cond_15
    invoke-static {v6, p0, p1, p4}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v6, v1

    .line 176
    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 355
    const-string v0, "Parsing banner mediafiles"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-static {p0, p1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 361
    if-nez v4, :cond_0

    move-object v0, v1

    .line 406
    :goto_0
    return-object v0

    .line 363
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 365
    if-nez v5, :cond_1

    .line 367
    const-string v0, "Empty mediafiles array"

    const-string v2, "Empty mediafiles array"

    invoke-static {v0, v2, p2}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object v0, v1

    .line 369
    goto :goto_0

    :cond_1
    move v2, v3

    .line 372
    :goto_1
    if-ge v2, v5, :cond_4

    .line 374
    invoke-static {v2, v4, p1, p2}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v6

    .line 376
    const-string v0, "src"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v0, v7, v8, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 380
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xc

    if-ge v7, v8, :cond_2

    if-eqz v0, :cond_2

    const-string v7, "https"

    .line 382
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 384
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_2
    const-string v7, "bitrate"

    invoke-static {v6, v7, v3, v3, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v6

    .line 392
    if-eqz v0, :cond_3

    .line 394
    new-instance v7, Lcom/my/target/core/models/e;

    invoke-direct {v7, v0}, Lcom/my/target/core/models/e;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v7, v6}, Lcom/my/target/core/models/e;->a(I)V

    .line 396
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 399
    :cond_3
    const-string v0, "Mediafile src is null"

    .line 400
    const-string v6, "Wrong mediafile"

    invoke-static {v0, v6, p2}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 406
    goto :goto_0
.end method

.method private static a(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 411
    invoke-static {p1, p2}, Lcom/my/target/core/parsers/rb/f;->a(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->addStats(Ljava/util/ArrayList;)V

    .line 414
    :cond_0
    return-void
.end method

.method private static a(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)Z
    .locals 11

    .prologue
    .line 190
    const-string v0, "Parsing audio banner"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    move-object v6, p0

    .line 192
    check-cast v6, Lcom/my/target/core/models/banners/c;

    .line 194
    const-string v0, "statistics"

    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v1, "duration"

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p3

    .line 197
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 199
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 200
    invoke-virtual {v6, v0}, Lcom/my/target/core/models/banners/c;->a(F)V

    .line 204
    :cond_0
    const-string v1, "point"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v7, v0

    .line 208
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_1

    invoke-virtual {v6, v7}, Lcom/my/target/core/models/banners/c;->b(F)V

    .line 209
    :cond_1
    const-string v1, "pointP"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 213
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/banners/c;->c(F)V

    .line 214
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, v7, v1

    if-gez v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/banners/c;->c(F)V

    .line 216
    :cond_3
    const-string v0, "adText"

    const-string v1, ""

    const/4 v2, 0x0

    .line 217
    invoke-static {p1, v0, v1, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {v6, v0}, Lcom/my/target/core/models/banners/c;->a(Ljava/lang/String;)V

    .line 219
    const-string v0, "allowSeek"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/banners/c;->a(Z)V

    .line 223
    const-string v0, "allowSkip"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/banners/c;->b(Z)V

    .line 227
    const-string v0, "allowTrackChange"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/banners/c;->c(Z)V

    .line 232
    const-string v0, "companionAds"

    invoke-static {p1, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_8

    .line 237
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 239
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_7

    .line 241
    const-string v0, "companionAds"

    invoke-static {v1, v2, v0, p3}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    .line 245
    if-eqz v5, :cond_4

    .line 4284
    const-string v0, "width"

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-static {v5, v0, v7, v8, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    .line 4288
    const-string v7, "height"

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v7

    .line 4292
    const-string v8, "id"

    const-string v9, ""

    const/4 v10, 0x1

    invoke-static {v5, v8, v9, v10, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 4296
    if-ltz v0, :cond_6

    if-ltz v7, :cond_6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4298
    invoke-static {v8}, Lcom/my/target/core/factories/a;->c(Ljava/lang/String;)Lcom/my/target/core/models/banners/e;

    move-result-object v0

    .line 4304
    invoke-static {v0, v5, p2, p3}, Lcom/my/target/core/parsers/rb/b;->e(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    .line 4306
    const-string v7, "staticResource"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setStaticResource(Ljava/lang/String;)V

    .line 4310
    const-string v7, "iframeResource"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setIframeResource(Ljava/lang/String;)V

    .line 4314
    const-string v7, "htmlResource"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setHtmlResource(Ljava/lang/String;)V

    .line 4318
    const-string v7, "apiFramework"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setApiFramework(Ljava/lang/String;)V

    .line 4322
    const-string v7, "adSlotID"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setAdSlotID(Ljava/lang/String;)V

    .line 4326
    const-string v7, "required"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setRequired(Ljava/lang/String;)V

    .line 4331
    const-string v7, "assetWidth"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setAssetWidth(I)V

    .line 4335
    const-string v7, "assetHeight"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setAssetHeight(I)V

    .line 4339
    const-string v7, "expandedWidth"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/banners/e;->setExpandedWidth(I)V

    .line 4343
    const-string v7, "expandedHeight"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/my/target/core/models/banners/e;->setExpandedHeight(I)V

    .line 249
    :goto_1
    if-eqz v0, :cond_4

    .line 251
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 201
    :cond_5
    const/4 v0, 0x0

    .line 275
    :goto_2
    return v0

    .line 4301
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 255
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 257
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/banners/c;->a(Ljava/util/ArrayList;)V

    .line 261
    :cond_8
    const-string v0, "statistics"

    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 264
    const-string v0, "mediafiles"

    invoke-static {p1, v0, p3}, Lcom/my/target/core/parsers/rb/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 269
    const/4 v0, 0x0

    goto :goto_2

    .line 272
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/e;

    invoke-virtual {v6, v0}, Lcom/my/target/core/models/banners/c;->a(Lcom/my/target/core/models/e;)V

    .line 275
    :cond_a
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private static b(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)Z
    .locals 15

    .prologue
    .line 419
    const-string v2, "Parsing video banner"

    sput-object v2, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    move-object v8, p0

    .line 421
    check-cast v8, Lcom/my/target/core/models/banners/m;

    .line 422
    const/4 v2, 0x0

    .line 423
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/my/target/core/models/sections/k;

    if-eqz v3, :cond_8

    .line 425
    check-cast p2, Lcom/my/target/core/models/sections/k;

    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/k;->k()Lcom/my/target/core/models/l;

    move-result-object v2

    .line 466
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 468
    const-string v3, "allowClose"

    .line 470
    invoke-virtual {v2}, Lcom/my/target/core/models/l;->a()Z

    move-result v4

    .line 468
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->d(Z)V

    .line 471
    const-string v3, "allowCloseDelay"

    .line 473
    invoke-virtual {v2}, Lcom/my/target/core/models/l;->b()F

    move-result v2

    float-to-double v4, v2

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    .line 471
    invoke-static/range {v2 .. v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v8, v2}, Lcom/my/target/core/models/banners/m;->d(F)V

    .line 476
    :cond_1
    const-string v2, "statistics"

    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    const-string v3, "duration"

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 481
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a

    .line 482
    invoke-virtual {v8, v2}, Lcom/my/target/core/models/banners/m;->c(F)V

    .line 486
    :cond_2
    const-string v2, "autoplay"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/my/target/core/models/banners/m;->e(Z)V

    .line 488
    const-string v2, "hasCtaButton"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/my/target/core/models/banners/m;->f(Z)V

    .line 490
    const-string v3, "point"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v2

    double-to-float v9, v2

    .line 494
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-ltz v2, :cond_3

    invoke-virtual {v8, v9}, Lcom/my/target/core/models/banners/m;->a(F)V

    .line 495
    :cond_3
    const-string v3, "pointP"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 499
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4

    invoke-virtual {v8, v2}, Lcom/my/target/core/models/banners/m;->b(F)V

    .line 500
    :cond_4
    const/4 v3, 0x0

    cmpg-float v3, v9, v3

    if-gez v3, :cond_5

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v8, v2}, Lcom/my/target/core/models/banners/m;->b(F)V

    .line 501
    :cond_5
    const-string v2, "previewLink"

    const-string v3, "previewHeight"

    const-string v4, "previewWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v2, v3, v4, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    .line 505
    if-eqz v2, :cond_6

    .line 507
    invoke-virtual {v8, v2}, Lcom/my/target/core/models/banners/m;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 510
    :cond_6
    const-string v2, "statistics"

    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 512
    const-string v4, "mediafiles"

    .line 5077
    const-string v2, "Parsing banner mediafiles"

    sput-object v2, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 5079
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5081
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 5083
    if-eqz v6, :cond_7

    .line 5085
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 5087
    if-nez v7, :cond_b

    .line 5089
    const-string v2, "Empty mediafiles array"

    const-string v3, "Empty mediafiles array"

    move-object/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 515
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 517
    const/4 v2, 0x0

    .line 524
    :goto_1
    return v2

    .line 427
    :cond_8
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/my/target/core/models/sections/d;

    if-eqz v3, :cond_9

    move-object/from16 v2, p2

    .line 429
    check-cast v2, Lcom/my/target/core/models/sections/d;

    invoke-virtual {v2}, Lcom/my/target/core/models/sections/d;->p()Lcom/my/target/core/models/l;

    move-result-object v2

    .line 430
    check-cast p2, Lcom/my/target/core/models/sections/d;

    .line 431
    const-string v3, "closeActionText"

    .line 433
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/d;->j()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 432
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v3, v4, v5, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->a(Ljava/lang/String;)V

    .line 434
    const-string v3, "replayActionText"

    .line 436
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/d;->m()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 435
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v3, v4, v5, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->b(Ljava/lang/String;)V

    .line 437
    const-string v3, "allowBackButton"

    .line 439
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/d;->q()Z

    move-result v4

    .line 437
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->a(Z)V

    .line 441
    const-string v3, "allowReplay"

    .line 443
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/d;->r()Z

    move-result v4

    .line 441
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->b(Z)V

    .line 445
    const-string v3, "automute"

    .line 447
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/d;->s()Z

    move-result v4

    .line 445
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->c(Z)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/d;->v()Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->g(Z)V

    goto/16 :goto_0

    .line 450
    :cond_9
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/my/target/core/models/sections/h;

    if-eqz v3, :cond_0

    .line 452
    check-cast p2, Lcom/my/target/core/models/sections/h;

    .line 454
    const-string v3, "closeActionText"

    .line 456
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/h;->k()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 455
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v3, v4, v5, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->a(Ljava/lang/String;)V

    .line 457
    const-string v3, "replayActionText"

    .line 459
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/h;->l()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 458
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v3, v4, v5, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->b(Ljava/lang/String;)V

    .line 460
    const-string v3, "automute"

    .line 462
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/h;->i()Z

    move-result v4

    .line 461
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 460
    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->c(Z)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Lcom/my/target/core/models/sections/h;->j()Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/my/target/core/models/banners/m;->g(Z)V

    goto/16 :goto_0

    .line 483
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 5094
    :cond_b
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_7

    .line 5096
    move-object/from16 v0, p3

    invoke-static {v3, v6, v4, v0}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v9

    .line 5098
    const-string v2, "src"

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-static {v9, v2, v10, v11, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5102
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xc

    if-ge v10, v11, :cond_c

    if-eqz v2, :cond_c

    const-string v10, "https"

    .line 5104
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 5106
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5107
    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5110
    :cond_c
    const-string v10, "width"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v9, v10, v11, v12, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v10

    .line 5112
    const-string v11, "height"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v9, v11, v12, v13, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v11

    .line 5114
    const-string v12, "bitrate"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-static {v9, v12, v13, v14, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v9

    .line 5118
    if-eqz v2, :cond_d

    if-lez v10, :cond_d

    if-lez v11, :cond_d

    if-lez v9, :cond_d

    .line 5121
    new-instance v12, Lcom/my/target/nativeads/models/VideoData;

    invoke-direct {v12, v2}, Lcom/my/target/nativeads/models/VideoData;-><init>(Ljava/lang/String;)V

    .line 5122
    invoke-virtual {v12, v9}, Lcom/my/target/nativeads/models/VideoData;->setBitrate(I)V

    .line 5123
    invoke-virtual {v12, v10}, Lcom/my/target/nativeads/models/VideoData;->setWidth(I)V

    .line 5124
    invoke-virtual {v12, v11}, Lcom/my/target/nativeads/models/VideoData;->setHeight(I)V

    .line 5125
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5094
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 5129
    :cond_d
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Some of mediafile\'s params are invalid: src = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " width = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " height = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " bitrate = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5134
    const-string v9, "Wrong mediafile"

    move-object/from16 v0, p3

    invoke-static {v2, v9, v0}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_3

    .line 521
    :cond_e
    invoke-virtual {v8, v5}, Lcom/my/target/core/models/banners/m;->a(Ljava/util/List;)V

    .line 524
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private static c(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 531
    const-string v0, "Parsing native banner"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    move-object v0, p0

    .line 533
    check-cast v0, Lcom/my/target/core/models/banners/h;

    .line 534
    const-string v1, "title"

    const-string v3, ""

    .line 535
    invoke-static {p1, v1, v3, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->f(Ljava/lang/String;)V

    .line 537
    const-string v1, "description"

    const-string v3, ""

    .line 538
    invoke-static {p1, v1, v3, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->b(Ljava/lang/String;)V

    .line 540
    const-string v1, "disclaimer"

    const-string v3, ""

    .line 541
    invoke-static {p1, v1, v3, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->c(Ljava/lang/String;)V

    .line 543
    const-string v1, "votes"

    .line 544
    invoke-static {p1, v1, v4, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v1

    .line 543
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->f(I)V

    .line 546
    const-string v1, "category"

    const-string v3, ""

    .line 547
    invoke-static {p1, v1, v3, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->a(Ljava/lang/String;)V

    .line 549
    const-string v1, "rating"

    .line 550
    invoke-static {p1, v1, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)F

    move-result v1

    .line 549
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->b(F)V

    .line 551
    const-string v1, "domain"

    const-string v3, ""

    invoke-static {p1, v1, v3, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->d(Ljava/lang/String;)V

    .line 553
    const-string v1, "subcategory"

    const-string v3, ""

    invoke-static {p1, v1, v3, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->e(Ljava/lang/String;)V

    .line 557
    const-string v1, "iconLink"

    const-string v3, "iconHeight"

    const-string v5, "iconWidth"

    invoke-static {p1, v1, v3, v5, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->d(Lcom/my/target/nativeads/models/ImageData;)V

    .line 563
    const-string v1, "imageLink"

    const-string v3, "imageHeight"

    const-string v5, "imageWidth"

    invoke-static {p1, v1, v3, v5, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->e(Lcom/my/target/nativeads/models/ImageData;)V

    .line 569
    const-string v1, "finalLink"

    const-string v3, ""

    invoke-static {p1, v1, v3, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->setFinalLink(Ljava/lang/String;)V

    .line 572
    const-string v1, "cards"

    invoke-static {p1, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 574
    if-eqz v5, :cond_4

    .line 576
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v4

    .line 577
    :goto_0
    if-ge v3, v6, :cond_4

    .line 579
    const-string v1, "cards"

    invoke-static {v3, v5, v1, p3}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    .line 5625
    const-string v1, "cardID"

    const-string v8, ""

    invoke-static {v7, v1, v8, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 6077
    new-instance v1, Lcom/my/target/core/models/banners/i;

    const-string v9, "promo"

    invoke-direct {v1, v8, v9}, Lcom/my/target/core/models/banners/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5632
    invoke-static {v1, v7, p2, p3}, Lcom/my/target/core/parsers/rb/b;->e(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    .line 5634
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->getTrackingLink()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5636
    const-string v1, "Native ad card parse error: no tracking link"

    const-string v7, "Required field absence"

    invoke-static {v1, v7, p3}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object v1, v2

    .line 586
    :goto_1
    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->m()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 5641
    :cond_1
    const-string v8, "ctaText"

    const-string v9, ""

    invoke-static {v7, v8, v9, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 5644
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5646
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getCtaText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/my/target/core/models/banners/i;->setCtaText(Ljava/lang/String;)V

    .line 5652
    :goto_2
    const-string v8, "imageLink"

    const-string v9, "imageHeight"

    const-string v10, "imageWidth"

    invoke-static {v7, v8, v9, v10, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v8

    .line 5656
    if-eqz v8, :cond_3

    .line 5657
    invoke-virtual {v1, v8}, Lcom/my/target/core/models/banners/i;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 5665
    const-string v8, "title"

    const-string v9, ""

    invoke-static {v7, v8, v9, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/my/target/core/models/banners/i;->b(Ljava/lang/String;)V

    .line 5670
    const-string v8, "description"

    const-string v9, ""

    invoke-static {v7, v8, v9, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/my/target/core/models/banners/i;->a(Ljava/lang/String;)V

    .line 5675
    invoke-static {v1, v7, p3}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_1

    .line 5649
    :cond_2
    invoke-virtual {v1, v8}, Lcom/my/target/core/models/banners/i;->setCtaText(Ljava/lang/String;)V

    goto :goto_2

    .line 5660
    :cond_3
    const-string v1, "Native ad card parse error: wrong image"

    const-string v7, "No image in banner"

    invoke-static {v1, v7, p3}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object v1, v2

    .line 5662
    goto :goto_1

    .line 593
    :cond_4
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 595
    const-string v1, "video"

    .line 596
    invoke-static {p1, v1, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 599
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 602
    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "video"

    const-string v4, "video"

    invoke-static {v1, v3, v4}, Lcom/my/target/core/factories/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v1

    .line 606
    instance-of v3, v1, Lcom/my/target/core/models/banners/m;

    if-nez v3, :cond_6

    .line 618
    :cond_5
    :goto_3
    return-void

    .line 608
    :cond_6
    invoke-static {v1, v2, p2, p3}, Lcom/my/target/core/parsers/rb/b;->e(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    .line 610
    invoke-static {v1, v2, p2, p3}, Lcom/my/target/core/parsers/rb/b;->b(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 614
    invoke-static {v1, v2, p3}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 615
    check-cast v1, Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/h;->a(Lcom/my/target/core/models/banners/m;)V

    goto :goto_3
.end method

.method private static d(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 792
    const-string v0, "Parsing fs image banner"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 794
    check-cast p0, Lcom/my/target/core/models/banners/f;

    .line 795
    const-string v0, "allowClose"

    .line 796
    invoke-static {p1, v0, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 795
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/banners/f;->a(Z)V

    .line 798
    const-string v0, "close_icon_hd"

    invoke-static {p1, v0, p3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 800
    if-nez v0, :cond_0

    .line 801
    const-string v0, "close_icon"

    invoke-static {p1, v0, p3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 804
    :cond_0
    if-nez v0, :cond_1

    .line 806
    instance-of v2, p2, Lcom/my/target/core/models/sections/d;

    if-eqz v2, :cond_1

    .line 807
    check-cast p2, Lcom/my/target/core/models/sections/d;

    invoke-virtual {p2}, Lcom/my/target/core/models/sections/d;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 810
    :cond_1
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/banners/f;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 812
    const-string v0, "portrait"

    invoke-static {p1, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 814
    if-eqz v2, :cond_4

    .line 816
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v1

    .line 818
    :goto_0
    if-ge v0, v4, :cond_3

    .line 820
    const-string v5, "portrait"

    invoke-static {v0, v2, v5, p3}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    .line 822
    if-eqz v5, :cond_2

    .line 823
    const-string v6, "imageLink"

    const-string v7, "height"

    const-string v8, "width"

    invoke-static {v5, v6, v7, v8, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v5

    .line 828
    if-eqz v5, :cond_2

    .line 830
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    :cond_3
    invoke-virtual {p0, v3}, Lcom/my/target/core/models/banners/f;->a(Ljava/util/List;)V

    .line 835
    :cond_4
    const-string v0, "landscape"

    invoke-static {p1, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 838
    if-eqz v2, :cond_7

    .line 840
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v1

    .line 842
    :goto_1
    if-ge v0, v4, :cond_6

    .line 844
    const-string v1, "landscape"

    invoke-static {v0, v2, v1, p3}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 846
    if-eqz v1, :cond_5

    .line 847
    const-string v5, "imageLink"

    const-string v6, "height"

    const-string v7, "width"

    invoke-static {v1, v5, v6, v7, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 852
    if-eqz v1, :cond_5

    .line 854
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 857
    :cond_6
    invoke-virtual {p0, v3}, Lcom/my/target/core/models/banners/f;->b(Ljava/util/List;)V

    .line 859
    :cond_7
    return-void
.end method

.method private static e(Lcom/my/target/core/models/banners/d;Lorg/json/JSONObject;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1008
    const-string v0, "Parsing common banner"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 1010
    const-string v0, "trackingLink"

    const-string v1, ""

    .line 1011
    invoke-static {p1, v0, v1, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setTrackingLink(Ljava/lang/String;)V

    .line 1014
    const-string v0, "finalLink"

    const-string v1, ""

    .line 1015
    invoke-static {p1, v0, v1, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setFinalLink(Ljava/lang/String;)V

    .line 1018
    const-string v0, "timeout"

    .line 1019
    invoke-static {p1, v0, v3, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    .line 1018
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setTimeout(I)V

    .line 1022
    const-string v0, "urlscheme"

    const-string v1, ""

    .line 1023
    invoke-static {p1, v0, v1, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setUrlScheme(Ljava/lang/String;)V

    .line 1026
    const-string v0, "width"

    .line 1027
    invoke-static {p1, v0, v3, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    .line 1026
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setWidth(I)V

    .line 1030
    const-string v0, "height"

    .line 1031
    invoke-static {p1, v0, v3, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    .line 1030
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setHeight(I)V

    .line 1034
    const-string v0, "ageRestrictions"

    const-string v1, ""

    .line 1035
    invoke-static {p1, v0, v1, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setAgeRestrictions(Ljava/lang/String;)V

    .line 1038
    const-string v0, "bundle_id"

    const-string v1, ""

    .line 1039
    invoke-static {p1, v0, v1, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setBundleId(Ljava/lang/String;)V

    .line 1042
    const-string v0, "deeplink"

    const-string v1, ""

    .line 1043
    invoke-static {p1, v0, v1, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setDeepLink(Ljava/lang/String;)V

    .line 1046
    const-string v0, "openInBrowser"

    .line 1047
    invoke-static {p1, v0, v3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1046
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setOpenInBrowser(Z)V

    .line 1050
    const-string v0, "usePlayStoreAction"

    .line 1051
    invoke-static {p1, v0, v3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1050
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setUsePlayStoreAction(Z)V

    .line 1054
    const-string v0, "navigationType"

    const-string v1, "web"

    invoke-static {p1, v0, v1, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    const-string v1, "deeplink"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    const-string v0, "store"

    .line 1058
    :cond_0
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setNavigationType(Ljava/lang/String;)V

    .line 1060
    const-string v1, "ctaText"

    const-string v2, ""

    invoke-static {p1, v1, v2, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    invoke-static {v0}, Lcom/my/target/core/models/banners/a;->getDefaultCtaText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    :goto_0
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setCtaText(Ljava/lang/String;)V

    .line 1070
    invoke-interface {p2}, Lcom/my/target/core/models/sections/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/d;->setAdvertisingLabel(Ljava/lang/String;)V

    .line 1071
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
