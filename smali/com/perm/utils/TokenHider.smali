.class public Lcom/perm/utils/TokenHider;
.super Ljava/lang/Object;
.source "TokenHider.java"


# direct methods
.method public static hideAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 8
    if-nez p0, :cond_1

    .line 12
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 10
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    sget-boolean v0, Lcom/perm/kate/api/Api;->is_dev:Z

    if-nez v0, :cond_0

    .line 12
    const-string v0, "access_token=\\w*"

    const-string v1, "access_token=..."

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token_(\\d*)=\\w*"

    const-string v2, "access_token_$1=..."

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static hideAccessTokenInJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 18
    if-nez p0, :cond_1

    .line 22
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 20
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    sget-boolean v0, Lcom/perm/kate/api/Api;->is_dev:Z

    if-nez v0, :cond_0

    .line 22
    const-string v0, "\"access_token\":\"\\w*\""

    const-string v1, "\"access_token\":\"...\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
