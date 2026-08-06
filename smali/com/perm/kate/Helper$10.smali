.class final Lcom/perm/kate/Helper$10;
.super Lcom/perm/kate/session/Callback;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->getUserIdFromLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1407
    iput-object p2, p0, Lcom/perm/kate/Helper$10;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/perm/kate/Helper$10;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1420
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/perm/kate/Helper$10;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    .line 1421
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1410
    iget-object v1, p0, Lcom/perm/kate/Helper$10;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    move-object v0, p1

    .line 1411
    check-cast v0, Ljava/util/ArrayList;

    .line 1412
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1413
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 1414
    iget-object v1, p0, Lcom/perm/kate/Helper$10;->val$callback:Lcom/perm/kate/session/Callback;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v2, p0, Lcom/perm/kate/Helper$10;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/perm/kate/session/Callback;->ready(Ljava/lang/Object;)V

    .line 1417
    :cond_0
    return-void
.end method
