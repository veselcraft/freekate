.class Lcom/perm/kate/WallMessageActivity$11;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 453
    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v5, v5, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v5, :cond_0

    .line 460
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v5, v5, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v5, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "_id":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v5, v5, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v5, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "_owner_id":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v5, v5, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v5, v5, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v5, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v5, v5, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v5, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v6, v6, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v6, v6, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    .line 458
    .local v4, "can_publish_to_group":Z
    :goto_1
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-boolean v5, v5, Lcom/perm/kate/WallMessageActivity;->can_remove:Z

    if-nez v5, :cond_2

    .line 459
    .local v3, "can_publish_like":Z
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v5}, Lcom/perm/kate/WallMessageActivity;->access$700(Lcom/perm/kate/WallMessageActivity;)Lcom/perm/utils/RepostHelper$RepostCallback;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .end local v3    # "can_publish_like":Z
    .end local v4    # "can_publish_to_group":Z
    :cond_1
    move v4, v0

    .line 457
    goto :goto_1

    .restart local v4    # "can_publish_to_group":Z
    :cond_2
    move v3, v0

    .line 458
    goto :goto_2
.end method
