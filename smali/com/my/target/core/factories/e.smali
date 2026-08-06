.class public final Lcom/my/target/core/factories/e;
.super Ljava/lang/Object;
.source "SectionsFactory.java"


# direct methods
.method public static a(Ljava/lang/String;I)Lcom/my/target/core/models/sections/i;
    .locals 2

    .prologue
    .line 33
    invoke-static {p0}, Lcom/my/target/core/enums/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_7

    .line 36
    const-string v1, "standard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/my/target/core/models/sections/j;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/j;-><init>(Ljava/lang/String;I)V

    .line 46
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const-string v1, "showcase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "appwall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Lcom/my/target/core/models/sections/b;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/b;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/my/target/core/models/sections/d;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/d;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 39
    :cond_3
    const-string v1, "nativeads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/my/target/core/models/sections/h;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/h;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 40
    :cond_4
    const-string v1, "instreamads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/my/target/core/models/sections/f;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/f;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 41
    :cond_5
    const-string v1, "fullscreenslider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 42
    new-instance v0, Lcom/my/target/core/models/sections/e;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/e;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 43
    :cond_6
    const-string v1, "instreamaudioads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    new-instance v0, Lcom/my/target/core/models/sections/g;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/g;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 46
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method
