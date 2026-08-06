.class Lcom/perm/kate/WallMessageListAdapter$4;
.super Ljava/lang/Object;
.source "WallMessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallMessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallMessageListAdapter;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    const v0, 0x7f0e0231

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    .local v1, "_id":Ljava/lang/String;
    const v0, 0x7f0e0237

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    .local v2, "_owner_id":Ljava/lang/String;
    const v0, 0x7f0e0062

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 327
    .local v7, "_wall_owner_id":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    iget-wide v10, v0, Lcom/perm/kate/WallMessageListAdapter;->account_id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 328
    .local v8, "is_me":Z
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 329
    .local v4, "can_publish_to_group":Z
    if-eqz v4, :cond_0

    if-nez v8, :cond_0

    const/4 v3, 0x1

    .line 330
    .local v3, "can_publish_like":Z
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-static {v0}, Lcom/perm/kate/WallMessageListAdapter;->access$000(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    iget-object v5, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-static {v5}, Lcom/perm/kate/WallMessageListAdapter;->access$100(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/utils/RepostHelper$RepostCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    iget-object v6, v6, Lcom/perm/kate/WallMessageListAdapter;->fragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroid/support/v4/app/Fragment;)V

    .line 331
    return-void

    .line 329
    .end local v3    # "can_publish_like":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
