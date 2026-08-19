.class Lcom/perm/kate/CommentsSearchActivity$9;
.super Ljava/lang/Thread;
.source "CommentsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsSearchActivity;->reloadInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsSearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsSearchActivity;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$9;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$9;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 414
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$9;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/CommentsSearchActivity;->access$102(Lcom/perm/kate/CommentsSearchActivity;I)I

    .line 415
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$9;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsSearchActivity;->access$1400(Lcom/perm/kate/CommentsSearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/perm/kate/CommentsSearchActivity;->access$1500(Lcom/perm/kate/CommentsSearchActivity;ILcom/perm/kate/session/Callback;)V

    return-void
.end method
