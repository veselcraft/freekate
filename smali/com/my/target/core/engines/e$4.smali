.class final Lcom/my/target/core/engines/e$4;
.super Ljava/lang/Object;
.source "FSPromoAdEngine.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/e;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/e;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/my/target/core/engines/e$4;->a:Lcom/my/target/core/engines/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/my/target/core/engines/e$4;->a:Lcom/my/target/core/engines/e;

    invoke-virtual {v0}, Lcom/my/target/core/engines/e;->a()V

    .line 90
    const-string v0, "Audiofocus loss, pausing"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_2
    const-string v0, "Audiofocus gain, unmuting"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/my/target/core/engines/e$4;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->e(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/my/target/core/engines/e$4;->a:Lcom/my/target/core/engines/e;

    invoke-virtual {v0}, Lcom/my/target/core/engines/e;->j()V

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v0, "Audiofocus loss can duck, set volume to 0.3"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/my/target/core/engines/e$4;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->e(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/my/target/core/engines/e$4;->a:Lcom/my/target/core/engines/e;

    invoke-virtual {v0}, Lcom/my/target/core/engines/e;->k()V

    goto :goto_0

    .line 85
    nop

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
