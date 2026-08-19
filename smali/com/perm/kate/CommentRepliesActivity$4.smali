.class Lcom/perm/kate/CommentRepliesActivity$4;
.super Ljava/lang/Object;
.source "CommentRepliesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentRepliesActivity;->confirmRemoveComment(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;

.field final synthetic val$commentId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;Ljava/lang/Long;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$4;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$4;->val$commentId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$4;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$4;->val$commentId:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/perm/kate/CommentRepliesActivity;->removeComment(Ljava/lang/Long;)V

    return-void
.end method
