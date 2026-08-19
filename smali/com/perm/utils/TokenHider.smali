.class public abstract Lcom/perm/utils/TokenHider;
.super Ljava/lang/Object;
.source "TokenHider.java"


# direct methods
.method public static hideAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 10
    :cond_0
    sget-boolean v0, Lcom/perm/kate/api/Api;->is_dev:Z

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "(token_?\\d*|receipt)=[\\w%\\-]+"

    const-string v1, "$1=..."

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hideAccessTokenInJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 30
    :cond_0
    sget-boolean v0, Lcom/perm/kate/api/Api;->is_dev:Z

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "\"access_token\":\"\\w*\""

    const-string v1, "\"access_token\":\"...\""

    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
