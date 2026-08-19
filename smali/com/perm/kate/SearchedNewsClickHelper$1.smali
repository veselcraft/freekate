.class Lcom/perm/kate/SearchedNewsClickHelper$1;
.super Ljava/lang/Object;
.source "SearchedNewsClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/SearchActivity;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$menus:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iput-object p3, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$activity:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 60
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$activity:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/SearchedNewsClickHelper;->access$000(Lcom/perm/kate/NewsItemTag;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V


    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p2, p2, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-wide v0, p2, Lcom/perm/kate/NewsItemTag;->_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$activity:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/SearchedNewsClickHelper$1;->val$activity:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
