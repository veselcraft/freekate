.class final Lcom/my/target/core/controllers/c$2;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/controllers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/controllers/c;


# direct methods
.method constructor <init>(Lcom/my/target/core/controllers/c;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/my/target/core/controllers/c$2;->a:Lcom/my/target/core/controllers/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/my/target/core/controllers/c$2;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->c(Lcom/my/target/core/controllers/c;)V

    .line 68
    const-string v0, "Audiofocus loss, pausing"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/my/target/core/controllers/c$2;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->d(Lcom/my/target/core/controllers/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "Audiofocus gain, unmuting"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/my/target/core/controllers/c$2;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->e(Lcom/my/target/core/controllers/c;)V

    goto :goto_0

    .line 80
    :pswitch_3
    iget-object v0, p0, Lcom/my/target/core/controllers/c$2;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->f(Lcom/my/target/core/controllers/c;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
