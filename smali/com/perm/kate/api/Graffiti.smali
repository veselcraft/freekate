.class public abstract Lcom/perm/kate/api/Graffiti;
.super Ljava/lang/Object;
.source "Graffiti.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Document;
    .locals 3

    .line 18
    new-instance v0, Lcom/perm/kate/api/Document;

    invoke-direct {v0}, Lcom/perm/kate/api/Document;-><init>()V

    const-string v1, "id"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Document;->id:J

    const-string v1, "owner_id"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Document;->owner_id:J

    const-string v1, "url"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    .line 22
    iput-object p0, v0, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GRAF_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/perm/kate/api/Document;->id:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    return-object v0
.end method
