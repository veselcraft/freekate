.class Lcom/perm/kate/VideoMenu$3;
.super Lcom/perm/kate/session/Callback;
.source "VideoMenu.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$3;->this$0:Lcom/perm/kate/VideoMenu;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 258
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 259
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$3;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object p1, p1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$3;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object p1, p1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 253
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$3;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object p1, p1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
