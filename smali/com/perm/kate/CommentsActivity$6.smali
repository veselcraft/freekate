.class Lcom/perm/kate/CommentsActivity$6;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->confirmRemoveComment(Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$commentId:Ljava/lang/Long;

.field final synthetic val$spammer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/Long;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentId:Ljava/lang/Long;

    iput-wide p3, p0, Lcom/perm/kate/CommentsActivity$6;->val$spammer_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentId:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity$6;->val$spammer_id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/CommentsActivity;->removeComment(Ljava/lang/Long;J)V

    .line 383
    return-void
.end method
