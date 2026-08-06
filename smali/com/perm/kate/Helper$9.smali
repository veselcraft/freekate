.class final Lcom/perm/kate/Helper$9;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$post_owner_id:Ljava/lang/String;

.field final synthetic val$repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/perm/kate/Helper$9;->val$menus:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/Helper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/kate/Helper$9;->val$repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    iput-object p4, p0, Lcom/perm/kate/Helper$9;->val$post_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/Helper$9;->val$post_owner_id:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/Helper$9;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1178
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/Helper$9;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v1, :pswitch_data_0

    .line 1196
    :goto_0
    :pswitch_0
    return-void

    .line 1180
    :pswitch_1
    new-instance v1, Lcom/perm/utils/RepostHelper;

    iget-object v2, p0, Lcom/perm/kate/Helper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v3, p0, Lcom/perm/kate/Helper$9;->val$repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-direct {v1, v2, v3}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    iget-object v2, p0, Lcom/perm/kate/Helper$9;->val$post_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/Helper$9;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1194
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1183
    .end local v0    # "th":Ljava/lang/Throwable;
    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/Helper$9;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/Helper$9;->val$post_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/Helper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->sendToFriend(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 1186
    :pswitch_3
    iget-object v1, p0, Lcom/perm/kate/Helper$9;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/Helper$9;->val$post_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/Helper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v4, p0, Lcom/perm/kate/Helper$9;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v2, v3, v4}, Lcom/perm/kate/Helper;->repostToGroup(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 1189
    :pswitch_4
    iget-object v1, p0, Lcom/perm/kate/Helper$9;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/Helper$9;->val$post_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/Helper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->sharePost(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1178
    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
