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

    .line 499
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 502
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz p1, :cond_0

    .line 503
    iget-wide v0, p1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v0, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, v5, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean p1, p1, Lcom/perm/kate/api/WallMessage;->user_like:Z

    xor-int/lit8 v4, p1, 0x1

    const/4 v6, 0x0

    iget-wide v7, v5, Lcom/perm/kate/WallMessageActivity;->account_id:J

    iget-boolean v9, v5, Lcom/perm/kate/WallMessageActivity;->ad:Z

    invoke-static/range {v2 .. v9}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;JZ)V

    .line 504
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/WallMessageActivity;->access$400(Lcom/perm/kate/WallMessageActivity;)V

    .line 505
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$9;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/WallMessageActivity;->access$500(Lcom/perm/kate/WallMessageActivity;)V

    :cond_0
    return-void
.end method
