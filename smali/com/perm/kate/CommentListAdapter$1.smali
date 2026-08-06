.class Lcom/perm/kate/CommentListAdapter$1;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentListAdapter;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/perm/kate/CommentListAdapter$1;->this$0:Lcom/perm/kate/CommentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    const v1, 0x7f0e026f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 295
    .local v0, "user_id":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentListAdapter$1;->this$0:Lcom/perm/kate/CommentListAdapter;

    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->access$000(Lcom/perm/kate/CommentListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentListAdapter$1;->this$0:Lcom/perm/kate/CommentListAdapter;

    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->access$000(Lcom/perm/kate/CommentListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/NewsCursorAdapter;->ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V

    goto :goto_0
.end method
