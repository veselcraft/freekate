.class Lcom/perm/kate/CommentsSearchActivity$13;
.super Ljava/lang/Thread;
.source "CommentsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsSearchActivity;->loadMore()V
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

    .line 589
    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$13;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 592
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$13;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iget-object v1, v0, Lcom/perm/kate/CommentsSearchActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/CommentsSearchActivity$13;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentsSearchActivity;->access$1900(Lcom/perm/kate/CommentsSearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/CommentsSearchActivity;->access$1500(Lcom/perm/kate/CommentsSearchActivity;ILcom/perm/kate/session/Callback;)V

    return-void
.end method
