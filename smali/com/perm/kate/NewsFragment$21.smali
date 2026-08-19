.class Lcom/perm/kate/NewsFragment$21;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 964
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$21;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 972
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 973
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$21;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 967
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$21;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
