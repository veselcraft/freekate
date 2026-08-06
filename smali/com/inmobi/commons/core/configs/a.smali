.class public abstract Lcom/inmobi/commons/core/configs/a;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/commons/core/configs/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/inmobi/commons/core/configs/a$a;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/a$a;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, "includeIds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 28
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v2}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "O1"

    const-string v4, "O1"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v2}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "SID"

    const-string v4, "SID"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v2}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "LID"

    const-string v4, "LID"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v2}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "UM5"

    const-string v4, "UM5"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v2}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "GPID"

    const-string v4, "GPID"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v2}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "IMID"

    const-string v4, "IMID"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v2}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "AIDL"

    const-string v4, "AIDL"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    const-string v2, "O1"

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v3}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "O1"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v2, "SID"

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v3}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "SID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v2, "LID"

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v3}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "LID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v2, "UM5"

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v3}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "UM5"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v2, "GPID"

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v3}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "GPID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v2, "IMID"

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v3}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "IMID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "AIDL"

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    invoke-static {v3}, Lcom/inmobi/commons/core/configs/a$a;->a(Lcom/inmobi/commons/core/configs/a$a;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "AIDL"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "includeIds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    return-object v0
.end method

.method public abstract c()Z
.end method

.method public abstract d()Lcom/inmobi/commons/core/configs/a;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/inmobi/commons/core/configs/a;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public o()Lcom/inmobi/commons/core/configs/a$a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/a;->a:Lcom/inmobi/commons/core/configs/a$a;

    return-object v0
.end method
