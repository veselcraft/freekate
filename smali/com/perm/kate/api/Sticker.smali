.class public Lcom/perm/kate/api/Sticker;
.super Ljava/lang/Object;
.source "Sticker.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public id:J

.field public photo_128:Ljava/lang/String;

.field public photo_256:Ljava/lang/String;

.field public photo_64:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Sticker;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    new-instance v0, Lcom/perm/kate/api/Sticker;

    invoke-direct {v0}, Lcom/perm/kate/api/Sticker;-><init>()V

    .line 17
    .local v0, "s":Lcom/perm/kate/api/Sticker;
    const-string v1, "photo_64"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    .line 18
    const-string v1, "photo_128"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    .line 19
    const-string v1, "photo_256"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    .line 20
    return-object v0
.end method
