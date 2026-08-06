.class Lcom/perm/kate/CommentRepliesActivity$7;
.super Ljava/lang/Object;
.source "CommentRepliesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentRepliesActivity;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$7;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$7;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$700(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/CommentListAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$7;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v2, v2, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    .line 317
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$7;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$700(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/CommentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/CommentListAdapter;->notifyDataSetChanged()V

    .line 318
    return-void
.end method
