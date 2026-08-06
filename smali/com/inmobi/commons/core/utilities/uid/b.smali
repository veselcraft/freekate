.class Lcom/inmobi/commons/core/utilities/uid/b;
.super Ljava/lang/Object;
.source "UidDao.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "uid_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "uid_store"

    invoke-static {p1, v0}, Lcom/inmobi/commons/core/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "adv_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "imid_timestamp"

    invoke-virtual {v0, v1, p1, p2}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;J)V

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "adv_id"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "limit_ad_tracking"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "limit_ad_tracking"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "app_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "im_id"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "im_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "appended_id"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public e()J
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "imid_timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "appended_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
