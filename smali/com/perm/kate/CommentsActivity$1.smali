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
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$1;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Lcom/perm/kate/data/PageCommentList;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComments(ILcom/perm/kate/session/Callback;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "c"    # Lcom/perm/kate/session/Callback;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$1;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, p1, p2}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;ILcom/perm/kate/session/Callback;)V

    .line 92
    return-void
.end method
