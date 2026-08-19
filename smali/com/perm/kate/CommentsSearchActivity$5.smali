.class Lcom/perm/kate/CommentsSearchActivity$5;
.super Lcom/perm/kate/session/Callback;
.source "CommentsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsSearchActivity;->removeComment(Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsSearchActivity;

.field final synthetic val$commentId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsSearchActivity;Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$5;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iput-object p3, p0, Lcom/perm/kate/CommentsSearchActivity$5;->val$commentId:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 317
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 318
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$5;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 307
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$5;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 308
    check-cast p1, Ljava/lang/Boolean;

    .line 309
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$5;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsSearchActivity;->access$1100(Lcom/perm/kate/CommentsSearchActivity;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$5;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsSearchActivity;->access$700(Lcom/perm/kate/CommentsSearchActivity;)I

    move-result p1

    int-to-long v3, p1

    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$5;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsSearchActivity;->access$600(Lcom/perm/kate/CommentsSearchActivity;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$5;->val$commentId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/db/DataHelper;->deleteComment(JJJJ)Z

    .line 312
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$5;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsSearchActivity;->access$200(Lcom/perm/kate/CommentsSearchActivity;)V

    :cond_0
    return-void
.end method
