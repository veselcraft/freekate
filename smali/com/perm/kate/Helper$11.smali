.class Lcom/perm/kate/Helper$11;
.super Lcom/perm/kate/session/Callback;
.source "Helper.java"


# instance fields
.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 1547
    iput-object p2, p0, Lcom/perm/kate/Helper$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/perm/kate/Helper$11;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1560
    iget-object p1, p0, Lcom/perm/kate/Helper$11;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 1550
    iget-object v0, p0, Lcom/perm/kate/Helper$11;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    .line 1551
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 1552
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1553
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 1554
    iget-object v0, p0, Lcom/perm/kate/Helper$11;->val$callback:Lcom/perm/kate/session/Callback;

    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    iget-wide v1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->ready(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
