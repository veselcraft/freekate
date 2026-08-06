.class final Lcom/perm/kate/Helper$4;
.super Lcom/perm/kate/session/Callback;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->getPhotoById(Ljava/lang/String;Landroid/content/Context;)V
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
    .line 484
    iput-object p2, p0, Lcom/perm/kate/Helper$4;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 497
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/perm/kate/Helper$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    .line 498
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 499
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 488
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/perm/kate/Helper$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    move-object v4, p1

    .line 489
    check-cast v4, Ljava/util/ArrayList;

    .line 490
    .local v4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/perm/kate/Helper$4;->val$context:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->access$100(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    .line 494
    :cond_0
    return-void
.end method
