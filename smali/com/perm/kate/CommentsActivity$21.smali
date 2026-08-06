.class Lcom/perm/kate/CommentsActivity$21;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsActivity;
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
    .line 783
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v2, v2, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/CommentsActivity;->access$2400(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method
