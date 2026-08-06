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

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 248
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v4, "com.perm.kate.id_widget"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 249
    .local v3, "widget_id":I
    const-string v4, "get_image"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    const-string v4, "com.perm.kate.url_photo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "url_photo":Ljava/lang/String;
    new-instance v4, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;-><init>(Lcom/perm/kate/KateWidgetMed$WgUpdateService;Ljava/lang/String;I)V

    .line 265
    invoke-virtual {v4}, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "url_photo":Ljava/lang/String;
    .end local v3    # "widget_id":I
    :catch_0
    move-exception v1

    .line 269
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 267
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "widget_id":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/perm/kate/KateWidgetMed$WgUpdateService;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/perm/kate/KateWidgetMed$WgUpdateService;->handleStart(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/perm/kate/KateWidgetMed$WgUpdateService;->handleStart(Landroid/content/Intent;)V

    .line 235
    const/4 v0, 0x2

    return v0
.end method
