.class Lcom/perm/kate/VideoMenu$3;
.super Lcom/perm/kate/session/Callback;
.source "VideoMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoMenu;->AddVideo(Ljava/lang/Long;Ljava/lang/Long;)V
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
    .line 203
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$3;->this$0:Lcom/perm/kate/VideoMenu;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 214
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$3;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, v0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 215
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$3;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, v0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 208
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$3;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, v0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const v1, 0x7f070496

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 209
    return-void
.end method
