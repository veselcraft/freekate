.class Lcom/perm/kate/CommentsActivity$20;
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
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentsActivity$20;->val$text2:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$20;->val$sticker_id:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 775
    const/4 v4, 0x0

    .line 776
    .local v4, "reply_to_cid":Ljava/lang/Long;
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$1400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentsActivity;->access$200(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/CommentsActivity$20;->val$text2:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity$20;->val$sticker_id:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v7}, Lcom/perm/kate/CommentsActivity;->access$2300(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static/range {v0 .. v8}, Lcom/perm/kate/NewCommentActivity;->createComment(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 779
    return-void
.end method
