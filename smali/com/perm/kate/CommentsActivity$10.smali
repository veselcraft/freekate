.class Lcom/perm/kate/CommentsActivity$10;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->confirmRemoveRecentComments(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$spammer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;J)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$10;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-wide p2, p0, Lcom/perm/kate/CommentsActivity$10;->val$spammer_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 557
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$10;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity$10;->val$spammer_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/CommentsActivity;->access$1500(Lcom/perm/kate/CommentsActivity;J)V

    return-void
.end method
