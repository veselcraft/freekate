.class Lcom/perm/kate/AudioClickHelper$12;
.super Lcom/perm/kate/session/Callback;
.source "AudioClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$12;->this$0:Lcom/perm/kate/AudioClickHelper;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 580
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$12;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
