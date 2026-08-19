.class Lcom/perm/kate/CommentsActivity$1;
.super Lcom/perm/kate/data/PageCommentList;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$1;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Lcom/perm/kate/data/PageCommentList;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComments(ILcom/perm/kate/session/Callback;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$1;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2, p2}, Lcom/perm/kate/CommentsActivity;->access$100(Lcom/perm/kate/CommentsActivity;IJLcom/perm/kate/session/Callback;)V

    return-void
.end method
