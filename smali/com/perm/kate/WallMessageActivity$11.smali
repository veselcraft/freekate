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

    .line 516
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 519
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez p1, :cond_0

    return-void

    .line 521
    :cond_0
    iget-wide v0, p1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 522
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v0, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 523
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 524
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-wide v7, p1, Lcom/perm/kate/WallMessageActivity;->account_id:J

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v9, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    cmp-long p1, v7, v9

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 525
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v2}, Lcom/perm/kate/WallMessageActivity;->access$600(Lcom/perm/kate/WallMessageActivity;)Lcom/perm/utils/RepostHelper$RepostCallback;

    move-result-object v7

    const/4 v8, 0x0

    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$11;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-boolean v9, p1, Lcom/perm/kate/WallMessageActivity;->ad:Z

    invoke-static/range {v2 .. v9}, Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
