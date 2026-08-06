.class Lcom/perm/kate/NewsCommentsFragment$1;
.super Ljava/lang/Thread;
.source "NewsCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsCommentsFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$1;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$1;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsCommentsFragment;->showProgressBar(Z)V

    .line 75
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$1;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NewsCommentsFragment;->Refresh()V

    .line 76
    return-void
.end method
