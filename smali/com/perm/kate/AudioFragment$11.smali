.class Lcom/perm/kate/AudioFragment$11;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 472
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return-void
.end method
