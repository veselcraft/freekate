.class Lcom/perm/kate/AttachmentsHelper$2$1;
.super Ljava/lang/Thread;
.source "AttachmentsHelper.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AttachmentsHelper$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper$2;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$2$1;->this$1:Lcom/perm/kate/AttachmentsHelper$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$2$1;->this$1:Lcom/perm/kate/AttachmentsHelper$2;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsHelper$2;->val$row:Lcom/perm/kate/api/Sticker;

    iget-object v0, v0, Lcom/perm/kate/api/Sticker;->animation_url:Ljava/lang/String;

    .line 537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ".json"

    if-eqz v1, :cond_0

    .line 538
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "images/stickers/"

    invoke-static {v1}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$2$1;->this$1:Lcom/perm/kate/AttachmentsHelper$2;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$2;->val$row:Lcom/perm/kate/api/Sticker;

    iget-wide v3, v1, Lcom/perm/kate/api/Sticker;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_0
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "b.json"

    .line 541
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$2$1;->this$1:Lcom/perm/kate/AttachmentsHelper$2;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$2;->val$activity:Landroid/app/Activity;

    check-cast v1, Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 550
    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->getServerResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$2$1;->this$1:Lcom/perm/kate/AttachmentsHelper$2;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsHelper$2;->val$activity:Landroid/app/Activity;

    check-cast v2, Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 552
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 554
    :cond_2
    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 557
    invoke-static {v2, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 560
    :cond_3
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_4

    return-void

    .line 564
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$2$1;->this$1:Lcom/perm/kate/AttachmentsHelper$2;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/perm/kate/AttachmentsHelper$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/AttachmentsHelper$2$1$1;-><init>(Lcom/perm/kate/AttachmentsHelper$2$1;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 582
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
