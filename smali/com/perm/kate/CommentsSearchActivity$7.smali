.class Lcom/perm/kate/CommentsSearchActivity$7;
.super Ljava/lang/Object;
.source "CommentsSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsSearchActivity;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsSearchActivity;

.field final synthetic val$commentDatas:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsSearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$7;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentsSearchActivity$7;->val$commentDatas:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$7;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsSearchActivity;->access$1200(Lcom/perm/kate/CommentsSearchActivity;)Lcom/perm/kate/CommentListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/CommentsSearchActivity$7;->val$commentDatas:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    .line 353
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$7;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsSearchActivity;->access$1200(Lcom/perm/kate/CommentsSearchActivity;)Lcom/perm/kate/CommentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
