.class Lcom/perm/kate/Helper$3;
.super Lcom/perm/kate/session/Callback;
.source "Helper.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .line 568
    iput-object p2, p0, Lcom/perm/kate/Helper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 580
    iget-object p1, p0, Lcom/perm/kate/Helper$3;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7

    .line 571
    iget-object v0, p0, Lcom/perm/kate/Helper$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    .line 572
    check-cast p1, Lcom/perm/kate/api/ScreenNameInfo;

    .line 573
    iget-object v0, p1, Lcom/perm/kate/api/ScreenNameInfo;->type:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 574
    iget-wide v2, p1, Lcom/perm/kate/api/ScreenNameInfo;->object_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/Helper$3;->val$context:Landroid/content/Context;

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/Helper;->access$100(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    .line 575
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/ScreenNameInfo;->type:Ljava/lang/String;

    const-string v1, "group"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 576
    iget-wide v3, p1, Lcom/perm/kate/api/ScreenNameInfo;->object_id:J

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/Helper$3;->val$context:Landroid/content/Context;

    const-string v2, ""

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/Helper;->access$100(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
