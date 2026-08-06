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
    .param p1, "this$0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$14;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchWallActivity$14;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/SearchWallActivity$14;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity$14;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/MenuItemDetails;

    iget v3, v3, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v3, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 505
    :pswitch_0
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity$14;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v3, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 506
    .local v0, "post_id":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity$14;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v3, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 507
    .local v2, "wall_owner_id":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/SearchWallActivity$14;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v0    # "post_id":Ljava/lang/String;
    .end local v2    # "wall_owner_id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 514
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 515
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 510
    .end local v1    # "th":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity$14;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity$14;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
