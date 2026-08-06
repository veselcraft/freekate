.class Lcom/perm/kate/CommentsActivity$11$2;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/CommentsActivity$11;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity$11;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/CommentsActivity$11;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$11$2;->this$1:Lcom/perm/kate/CommentsActivity$11;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 500
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$11$2;->this$1:Lcom/perm/kate/CommentsActivity$11;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    iget v1, v0, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    int-to-long v2, v1

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    .line 495
    return-void
.end method
