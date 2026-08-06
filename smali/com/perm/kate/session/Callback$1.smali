.class Lcom/perm/kate/session/Callback$1;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Callback;

.field final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Callback;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Callback;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/perm/kate/session/Callback$1;->this$0:Lcom/perm/kate/session/Callback;

    iput-object p2, p0, Lcom/perm/kate/session/Callback$1;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/session/Callback$1;->this$0:Lcom/perm/kate/session/Callback;

    iget-object v3, v3, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 72
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/session/Callback$1;->val$ex:Ljava/lang/Throwable;

    instance-of v3, v3, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 30
    iget-object v3, p0, Lcom/perm/kate/session/Callback$1;->this$0:Lcom/perm/kate/session/Callback;

    iget-object v3, v3, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070302

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 70
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_0

    .line 31
    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/session/Callback$1;->val$ex:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/perm/kate/api/KException;

    if-eqz v3, :cond_2

    .line 33
    iget-object v1, p0, Lcom/perm/kate/session/Callback$1;->val$ex:Ljava/lang/Throwable;

    check-cast v1, Lcom/perm/kate/api/KException;

    .line 35
    .local v1, "kex":Lcom/perm/kate/api/KException;
    iget v3, v1, Lcom/perm/kate/api/KException;->error_code:I

    sparse-switch v3, :sswitch_data_0

    .line 62
    iget-object v3, p0, Lcom/perm/kate/session/Callback$1;->val$ex:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "message":Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 44
    .end local v2    # "message":Ljava/lang/String;
    :sswitch_0
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1

    .line 66
    .end local v1    # "kex":Lcom/perm/kate/api/KException;
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/session/Callback$1;->this$0:Lcom/perm/kate/session/Callback;

    iget-object v3, v3, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/session/Callback$1;->val$ex:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xf -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xd4 -> :sswitch_0
        0xd5 -> :sswitch_0
        0x321 -> :sswitch_0
        0x579 -> :sswitch_0
    .end sparse-switch
.end method
