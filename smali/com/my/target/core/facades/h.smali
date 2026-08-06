.class public final Lcom/my/target/core/facades/h;
.super Lcom/my/target/core/facades/a;
.source "StandardAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/facades/h$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/my/target/core/models/sections/i;

.field private c:Lcom/my/target/core/facades/h$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/core/facades/a;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/facades/h;->a:Z

    .line 80
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/facades/h;->a:Z

    .line 81
    return-void
.end method

.method private constructor <init>(Lcom/my/target/core/a;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/facades/a;-><init>(Lcom/my/target/core/a;Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/facades/h;->a:Z

    .line 87
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/facades/h;->a:Z

    .line 88
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/my/target/core/facades/h;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/my/target/core/facades/h$a;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/my/target/core/facades/h;->c:Lcom/my/target/core/facades/h$a;

    .line 65
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/h;->adData:Lcom/my/target/core/models/c;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    invoke-interface {v0, p1}, Lcom/my/target/core/models/sections/i;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/core/facades/h;->adData:Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/core/facades/h;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    if-eqz v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    invoke-interface {v0, p1}, Lcom/my/target/core/models/sections/i;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    .line 155
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/my/target/core/facades/h;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 156
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/my/target/core/facades/h;->a:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/my/target/core/facades/h;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/h;->adData:Lcom/my/target/core/models/c;

    invoke-virtual {v0}, Lcom/my/target/core/models/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/my/target/core/facades/h;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/h;->adData:Lcom/my/target/core/models/c;

    invoke-virtual {v0}, Lcom/my/target/core/models/c;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    invoke-interface {v0}, Lcom/my/target/core/models/sections/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    invoke-interface {v0}, Lcom/my/target/core/models/sections/i;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/my/target/core/facades/h;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/h;->adData:Lcom/my/target/core/models/c;

    invoke-virtual {v0}, Lcom/my/target/core/models/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/my/target/core/models/sections/j;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    if-eqz v0, :cond_0

    const-string v0, "standard"

    iget-object v1, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    invoke-interface {v1}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    check-cast v0, Lcom/my/target/core/models/sections/j;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Lcom/my/target/core/facades/h;
    .locals 4

    .prologue
    .line 160
    new-instance v0, Lcom/my/target/core/facades/h;

    iget-object v1, p0, Lcom/my/target/core/facades/h;->adParams:Lcom/my/target/core/a;

    iget-object v2, p0, Lcom/my/target/core/facades/h;->context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/my/target/core/facades/h;->a:Z

    .line 161
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/my/target/core/facades/h;-><init>(Lcom/my/target/core/a;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 162
    iget-object v1, p0, Lcom/my/target/core/facades/h;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v1}, Lcom/my/target/core/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->setTrackingEnvironmentEnabled(Z)V

    .line 163
    return-object v0
.end method

.method public final j()Lcom/my/target/core/models/j;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    if-eqz v0, :cond_0

    const-string v0, "standard"

    iget-object v1, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    invoke-interface {v1}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    check-cast v0, Lcom/my/target/core/models/sections/j;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/j;->i()Lcom/my/target/core/models/j;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onLoad(Lcom/my/target/core/models/c;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/my/target/core/facades/h;->c:Lcom/my/target/core/facades/h$a;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/my/target/core/models/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/my/target/core/facades/h;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    .line 183
    iget-object v0, p0, Lcom/my/target/core/facades/h;->b:Lcom/my/target/core/models/sections/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/facades/h;->c:Lcom/my/target/core/facades/h$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/h$a;->onLoad(Lcom/my/target/core/facades/h;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/h;->c:Lcom/my/target/core/facades/h$a;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/core/facades/h$a;->onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/h;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/facades/h;->c:Lcom/my/target/core/facades/h$a;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/core/facades/h$a;->onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/h;)V

    goto :goto_0
.end method

.method protected final onLoadError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/my/target/core/facades/h;->c:Lcom/my/target/core/facades/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/h;->c:Lcom/my/target/core/facades/h$a;

    invoke-interface {v0, p1, p0}, Lcom/my/target/core/facades/h$a;->onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/h;)V

    .line 193
    :cond_0
    return-void
.end method
