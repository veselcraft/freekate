.class final Lcom/perm/kate/Helper$2;
.super Lcom/perm/kate/session/Callback;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->resolveScreenName(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 458
    iput-object p2, p0, Lcom/perm/kate/Helper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 470
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/perm/kate/Helper$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    .line 472
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 461
    iget-object v1, p0, Lcom/perm/kate/Helper$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    move-object v6, p1

    .line 462
    check-cast v6, Lcom/perm/kate/api/ScreenNameInfo;

    .line 463
    .local v6, "info":Lcom/perm/kate/api/ScreenNameInfo;
    const-string v1, "user"

    iget-object v2, v6, Lcom/perm/kate/api/ScreenNameInfo;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-wide v2, v6, Lcom/perm/kate/api/ScreenNameInfo;->object_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/perm/kate/Helper$2;->val$context:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->access$100(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    .line 465
    :cond_0
    const-string v0, "group"

    iget-object v1, v6, Lcom/perm/kate/api/ScreenNameInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    const/4 v0, 0x1

    const-string v1, ""

    iget-wide v2, v6, Lcom/perm/kate/api/ScreenNameInfo;->object_id:J

    iget-object v5, p0, Lcom/perm/kate/Helper$2;->val$context:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->access$100(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    .line 467
    :cond_1
    return-void
.end method
