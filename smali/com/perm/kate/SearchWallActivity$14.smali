.class Lcom/perm/kate/SearchWallActivity$14;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->CreateContextMenuForComment(Lcom/perm/kate/NewsItemTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$14;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchWallActivity$14;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/SearchWallActivity$14;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 502
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$14;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$14;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$14;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchWallActivity;->access$2000(Lcom/perm/kate/SearchWallActivity;Lcom/perm/kate/NewsItemTag;)V

    goto :goto_0

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$14;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$14;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$14;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 505
    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 506
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$14;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v1, v0}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 516
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 517
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
