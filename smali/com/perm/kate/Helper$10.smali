.class Lcom/perm/kate/Helper$10;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$ad:Z

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$post_owner_id:Ljava/lang/String;

.field final synthetic val$repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;Ljava/lang/String;Ljava/lang/String;ZLandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1319
    iput-object p1, p0, Lcom/perm/kate/Helper$10;->val$menus:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/Helper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/kate/Helper$10;->val$repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    iput-object p4, p0, Lcom/perm/kate/Helper$10;->val$post_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/Helper$10;->val$post_owner_id:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/perm/kate/Helper$10;->val$ad:Z

    iput-object p7, p0, Lcom/perm/kate/Helper$10;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1323
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/Helper$10;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_3

    const/16 p2, 0x3f4

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3f6

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3f8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1334
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/Helper$10;->val$post_owner_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/Helper$10;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/Helper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->sharePost(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1328
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/Helper$10;->val$post_owner_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/Helper$10;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/Helper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-boolean v1, p0, Lcom/perm/kate/Helper$10;->val$ad:Z

    invoke-static {p1, p2, v0, v1}, Lcom/perm/kate/Helper;->sendToFriend(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 1331
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/Helper$10;->val$post_owner_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/Helper$10;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/Helper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v1, p0, Lcom/perm/kate/Helper$10;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2, v0, v1}, Lcom/perm/kate/Helper;->repostToGroup(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1325
    :cond_3
    new-instance v0, Lcom/perm/utils/RepostHelper;

    iget-object p1, p0, Lcom/perm/kate/Helper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p0, Lcom/perm/kate/Helper$10;->val$repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-direct {v0, p1, p2}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    iget-object p1, p0, Lcom/perm/kate/Helper$10;->val$post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/Helper$10;->val$post_owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/perm/kate/Helper$10;->val$ad:Z

    invoke-virtual/range {v0 .. v6}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1338
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1339
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
