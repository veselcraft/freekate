.class Lcom/perm/kate/VideoMenu$6;
.super Lcom/perm/kate/session/Callback;
.source "VideoMenu.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$6;->this$0:Lcom/perm/kate/VideoMenu;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 300
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 303
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 304
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$6;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object p1, p1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 291
    check-cast p1, Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$6;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, v0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    const-string v0, "1"

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$6;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object p1, p1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_0
    return-void
.end method
