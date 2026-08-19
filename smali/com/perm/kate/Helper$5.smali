.class Lcom/perm/kate/Helper$5;
.super Lcom/perm/kate/session/Callback;
.source "Helper.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .line 596
    iput-object p2, p0, Lcom/perm/kate/Helper$5;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/perm/kate/Helper$5;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    .line 610
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 600
    iget-object v0, p0, Lcom/perm/kate/Helper$5;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    .line 601
    move-object v6, p1

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 602
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 604
    iget-object v7, p0, Lcom/perm/kate/Helper$5;->val$context:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/Helper;->access$100(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
