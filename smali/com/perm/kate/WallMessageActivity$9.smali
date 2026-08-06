.class Lcom/perm/kate/WallMessageActivity$9;
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
    .line 433
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-wide v6, v0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    .line 438
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/WallMessageActivity;->access$500(Lcom/perm/kate/WallMessageActivity;)V

    .line 439
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/WallMessageActivity;->access$600(Lcom/perm/kate/WallMessageActivity;)V

    .line 441
    :cond_0
    return-void

    .line 437
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
