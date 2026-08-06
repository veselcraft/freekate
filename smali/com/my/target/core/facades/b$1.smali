.class final Lcom/my/target/core/facades/b$1;
.super Ljava/lang/Object;
.source "AbstractNativeAd.java"

# interfaces
.implements Lcom/my/target/core/controllers/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/b;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/b;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v1, v1, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 78
    :cond_0
    return-void
.end method

.method public final a(FLjava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/HashSet",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {p2, p1, v0}, Lcom/my/target/core/models/c;->a(Ljava/util/Set;FLandroid/content/Context;)V

    .line 133
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    const-string v1, "fullscreenOn"

    iget-object v2, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    const-string v1, "fullscreenOff"

    iget-object v2, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    const-string v1, "playbackPaused"

    iget-object v2, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    .line 100
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    const-string v1, "playbackResumed"

    iget-object v2, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    .line 109
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    const-string v1, "volumeOff"

    iget-object v2, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    .line 117
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    const-string v1, "volumeOn"

    iget-object v2, p0, Lcom/my/target/core/facades/b$1;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    .line 125
    :cond_0
    return-void
.end method
