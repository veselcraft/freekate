.class Lcom/perm/kate/NewCommentActivity$2;
.super Ljava/lang/Thread;
.source "NewCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->send(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;

.field final synthetic val$sticker_id:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$2;->val$sticker_id:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 215
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$100(Lcom/perm/kate/NewCommentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$200(Lcom/perm/kate/NewCommentActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v1}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v2}, Lcom/perm/kate/NewCommentActivity;->access$400(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v3}, Lcom/perm/kate/NewCommentActivity;->access$500(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v4}, Lcom/perm/kate/NewCommentActivity;->access$600(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v5}, Lcom/perm/kate/NewCommentActivity;->access$700(Lcom/perm/kate/NewCommentActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v6}, Lcom/perm/kate/NewCommentActivity;->access$800(Lcom/perm/kate/NewCommentActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    iget-object v8, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v8}, Lcom/perm/kate/NewCommentActivity;->access$900(Lcom/perm/kate/NewCommentActivity;)J

    move-result-wide v8

    invoke-static/range {v0 .. v9}, Lcom/perm/kate/NewCommentActivity;->editComment(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$200(Lcom/perm/kate/NewCommentActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v1}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v2}, Lcom/perm/kate/NewCommentActivity;->access$400(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v3}, Lcom/perm/kate/NewCommentActivity;->access$500(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v4}, Lcom/perm/kate/NewCommentActivity;->access$600(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v5}, Lcom/perm/kate/NewCommentActivity;->access$700(Lcom/perm/kate/NewCommentActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/perm/kate/NewCommentActivity$2;->val$sticker_id:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v7}, Lcom/perm/kate/NewCommentActivity;->access$1000(Lcom/perm/kate/NewCommentActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/NewCommentActivity$2;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static/range {v0 .. v8}, Lcom/perm/kate/NewCommentActivity;->createComment(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
