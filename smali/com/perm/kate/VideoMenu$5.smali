.class Lcom/perm/kate/VideoMenu$5;
.super Lcom/perm/kate/session/Callback;
.source "VideoMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoMenu;->DeleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoMenu;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$5;->this$0:Lcom/perm/kate/VideoMenu;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 239
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$5;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, v0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 244
    return-void

    .line 242
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 230
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/VideoMenu$5;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v1, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 232
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/perm/kate/VideoMenu$5;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v1, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const v2, 0x7f0704a9

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 234
    :cond_0
    return-void
.end method
