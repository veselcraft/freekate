.class public Lcom/perm/kate/api/Privacy;
.super Ljava/lang/Object;
.source "Privacy.java"


# instance fields
.field public privacy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFromPrivacyValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, -0x1

    .line 64
    .local v0, "pos":I
    const-string v1, "all"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    const-string v1, "friends"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "friends_of_friends"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    const/4 v0, 0x2

    goto :goto_0

    .line 70
    :cond_3
    const-string v1, "only_me"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getPrivacyValueFromInt(I)Ljava/lang/String;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "res":Ljava/lang/String;
    const/4 v1, -0x1

    if-le p0, v1, :cond_0

    .line 48
    if-nez p0, :cond_1

    .line 49
    const-string v0, "all"

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 51
    const-string v0, "friends"

    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    .line 53
    const-string v0, "friends_of_friends"

    goto :goto_0

    .line 54
    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 55
    const-string v0, "only_me"

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONArray;)Lcom/perm/kate/api/Privacy;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    if-nez p0, :cond_1

    .line 33
    const/4 v1, 0x0

    .line 38
    :cond_0
    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lcom/perm/kate/api/Privacy;

    invoke-direct {v1}, Lcom/perm/kate/api/Privacy;-><init>()V

    .line 35
    .local v1, "p":Lcom/perm/kate/api/Privacy;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 37
    iget-object v2, v1, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parseString(Ljava/lang/String;)Lcom/perm/kate/api/Privacy;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p0, :cond_1

    .line 78
    const/4 v1, 0x0

    .line 88
    :cond_0
    :goto_0
    return-object v1

    .line 79
    :cond_1
    new-instance v1, Lcom/perm/kate/api/Privacy;

    invoke-direct {v1}, Lcom/perm/kate/api/Privacy;-><init>()V

    .line 80
    .local v1, "p":Lcom/perm/kate/api/Privacy;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    .line 81
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 82
    iget-object v3, v1, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_2
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 86
    iget-object v3, v1, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getFirstValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 19
    iget-object v2, p0, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 20
    const/4 v1, 0x0

    .line 27
    :cond_0
    return-object v1

    .line 21
    :cond_1
    const-string v1, ""

    .line 22
    .local v1, "res":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    goto :goto_0
.end method
