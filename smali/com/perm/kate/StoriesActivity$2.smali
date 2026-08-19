.class Lcom/perm/kate/StoriesActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "StoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StoriesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity;Landroid/app/Activity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$2;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity$2;->this$0:Lcom/perm/kate/StoriesActivity;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/StoriesActivity;->games:Ljava/util/ArrayList;

    .line 71
    invoke-static {p1}, Lcom/perm/kate/StoriesActivity;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 72
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$2;->this$0:Lcom/perm/kate/StoriesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 73
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$2;->this$0:Lcom/perm/kate/StoriesActivity;

    new-instance v0, Lcom/perm/kate/StoriesActivity$2$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StoriesActivity$2$1;-><init>(Lcom/perm/kate/StoriesActivity$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
