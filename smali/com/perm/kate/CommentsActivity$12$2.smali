.class Lcom/perm/kate/CommentsActivity$12$2;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/CommentsActivity$12;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity$12;Landroid/app/Activity;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$12$2;->this$1:Lcom/perm/kate/CommentsActivity$12;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 590
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$12$2;->this$1:Lcom/perm/kate/CommentsActivity$12;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    iget v1, v0, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    int-to-long v1, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int p1, v1

    iput p1, v0, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    return-void
.end method
