.class Lcom/perm/kate/AudioClickHelper$9$1;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioClickHelper$9;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper$9;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 533
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const v2, 0x7f0f00c9

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
