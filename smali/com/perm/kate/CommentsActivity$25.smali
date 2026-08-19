.class Lcom/perm/kate/CommentsActivity$25;
.super Ljava/lang/Thread;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->send(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$sticker_id:Ljava/lang/Integer;

.field final synthetic val$text2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentsActivity$25;->val$text2:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$25;->val$sticker_id:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1032
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1033
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 1036
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v1

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$1600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity$25;->val$text2:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$25;->val$sticker_id:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$2900(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static/range {v1 .. v9}, Lcom/perm/kate/NewCommentActivity;->createComment(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
