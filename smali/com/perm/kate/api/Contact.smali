.class public Lcom/perm/kate/api/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public desc:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Contact;
    .locals 3

    .line 18
    new-instance v0, Lcom/perm/kate/api/Contact;

    invoke-direct {v0}, Lcom/perm/kate/api/Contact;-><init>()V

    const-string v1, "user_id"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    :cond_0
    const-string v1, "desc"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Contact;->desc:Ljava/lang/String;

    const-string v1, "email"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Contact;->email:Ljava/lang/String;

    const-string v1, "phone"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Contact;->phone:Ljava/lang/String;

    return-object v0
.end method
