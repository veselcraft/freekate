.class public Lcom/perm/kate/api/Note;
.super Ljava/lang/Object;
.source "Note.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public date:J

.field public ncom:J

.field public nid:J

.field public owner_id:J

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/perm/kate/api/Note;->date:J

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/perm/kate/api/Note;->ncom:J

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Note;
    .locals 4

    .line 18
    new-instance v0, Lcom/perm/kate/api/Note;

    invoke-direct {v0}, Lcom/perm/kate/api/Note;-><init>()V

    const-string v1, "id"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Note;->nid:J

    const-string v1, "owner_id"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Note;->owner_id:J

    const-string v1, "title"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    const-string v1, "comments"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Note;->ncom:J

    const-string v1, "text"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    const-string v2, "\\n"

    const-string v3, "<br/>"

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    const-string v1, "date"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Note;->date:J

    return-object v0
.end method
