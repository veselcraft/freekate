.class Lcom/perm/kate/AudioClickHelper$7$1;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper$7;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioClickHelper$7;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper$7;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/AudioClickHelper$7;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$7$1;->this$1:Lcom/perm/kate/AudioClickHelper$7;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$7$1;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$7$1;->this$1:Lcom/perm/kate/AudioClickHelper$7;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper$7;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 356
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$7$1;->val$code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$7$1;->this$1:Lcom/perm/kate/AudioClickHelper$7;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper$7;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const v1, 0x7f070495

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    :cond_0
    return-void
.end method
