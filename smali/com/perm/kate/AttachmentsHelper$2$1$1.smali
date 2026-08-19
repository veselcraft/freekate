.class Lcom/perm/kate/AttachmentsHelper$2$1$1;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/AttachmentsHelper$2$1;

.field final synthetic val$comp:Lcom/airbnb/lottie/LottieComposition;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper$2$1;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$2$1$1;->this$2:Lcom/perm/kate/AttachmentsHelper$2$1;

    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$2$1$1;->val$comp:Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 568
    :try_start_0
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    .line 570
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$2$1$1;->val$comp:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    .line 571
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$2$1$1;->this$2:Lcom/perm/kate/AttachmentsHelper$2$1;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$2$1;->this$1:Lcom/perm/kate/AttachmentsHelper$2;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    .line 572
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 573
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
