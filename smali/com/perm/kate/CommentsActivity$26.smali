.class Lcom/perm/kate/CommentsActivity$26;
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

    .line 1041
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$26;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1045
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$26;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v0, p1, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 1048
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$26;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1049
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$26;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p1, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/CommentsActivity;->access$3000(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
