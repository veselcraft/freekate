.class Lcom/perm/ads/Config$Banner;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/ads/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Banner"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field click_url:Ljava/lang/String;

.field id:Ljava/lang/String;

.field image_url:Ljava/lang/String;

.field weight:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/ads/Config$Banner;->weight:I

    .line 125
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/ads/Config$Banner;
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/perm/ads/Config$Banner;

    invoke-direct {v0}, Lcom/perm/ads/Config$Banner;-><init>()V

    .line 133
    .local v0, "b":Lcom/perm/ads/Config$Banner;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/ads/Config$Banner;->id:Ljava/lang/String;

    .line 134
    const-string v1, "img"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/ads/Config$Banner;->image_url:Ljava/lang/String;

    .line 135
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/ads/Config$Banner;->click_url:Ljava/lang/String;

    .line 136
    const-string v1, "w"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/perm/ads/Config$Banner;->weight:I

    .line 137
    return-object v0
.end method
