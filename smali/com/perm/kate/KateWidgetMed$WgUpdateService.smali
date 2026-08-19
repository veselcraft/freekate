.class public Lcom/perm/kate/KateWidgetMed$WgUpdateService;
.super Landroid/app/Service;
.source "KateWidgetMed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/KateWidgetMed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WgUpdateService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 3

    .line 237
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.perm.kate.id_widget"

    const/4 v2, -0x1

    .line 240
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "get_image"

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.perm.kate.url_photo"

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    new-instance v0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;-><init>(Lcom/perm/kate/KateWidgetMed$WgUpdateService;Ljava/lang/String;I)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 259
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcom/perm/kate/KateWidgetMed$WgUpdateService;->handleStart(Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1
.end method
