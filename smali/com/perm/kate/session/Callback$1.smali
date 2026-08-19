.class Lcom/perm/kate/session/Callback$1;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Callback;

.field final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Callback;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/perm/kate/session/Callback$1;->this$0:Lcom/perm/kate/session/Callback;

    iput-object p2, p0, Lcom/perm/kate/session/Callback$1;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/session/Callback$1;->this$0:Lcom/perm/kate/session/Callback;

    iget-object v0, v0, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/session/Callback$1;->val$ex:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/io/IOException;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/perm/kate/session/Callback$1;->this$0:Lcom/perm/kate/session/Callback;

    iget-object v0, v0, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0364

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 31
    :cond_1
    instance-of v1, v0, Lcom/perm/kate/api/KException;

    if-eqz v1, :cond_5

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/perm/kate/api/KException;

    .line 35
    iget v1, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_4

    const/16 v3, 0xf

    if-eq v1, v3, :cond_4

    const/16 v3, 0x19

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1e

    if-eq v1, v3, :cond_4

    const/16 v3, 0xcc

    if-eq v1, v3, :cond_2

    const/16 v3, 0x321

    if-eq v1, v3, :cond_4

    const/16 v3, 0x386

    if-eq v1, v3, :cond_4

    const/16 v3, 0x39c

    if-eq v1, v3, :cond_4

    const/16 v3, 0x579

    if-eq v1, v3, :cond_4

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_4

    const/16 v3, 0xc9

    if-eq v1, v3, :cond_4

    const/16 v3, 0xd4

    if-eq v1, v3, :cond_4

    const/16 v3, 0xd5

    if-eq v1, v3, :cond_4

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f0f058a

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043b\u0438\u0446\u0435\u043d\u0437\u0438\u044e \u043d\u0430 \u043c\u0443\u0437\u044b\u043a\u0443. \u0423\u0431\u0435\u0434\u0438\u0442\u0435\u0441\u044c \u0447\u0442\u043e \u0443 \u0432\u0430\u0441 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u044b Google Play Services."

    goto :goto_0

    .line 47
    :cond_4
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f0f0028

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_6

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_6
    iget-object v1, p0, Lcom/perm/kate/session/Callback$1;->this$0:Lcom/perm/kate/session/Callback;

    iget-object v1, v1, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 87
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :goto_1
    return-void
.end method
