.class Lcom/perm/kate/AudioClickHelper$7;
.super Lcom/perm/kate/session/Callback;
.source "AudioClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioClickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioClickHelper;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$7;->this$0:Lcom/perm/kate/AudioClickHelper;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 364
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$7;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$7;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 366
    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 351
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$7;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    new-instance v2, Lcom/perm/kate/AudioClickHelper$7$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/AudioClickHelper$7$1;-><init>(Lcom/perm/kate/AudioClickHelper$7;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method
