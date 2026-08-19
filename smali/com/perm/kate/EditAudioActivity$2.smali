.class Lcom/perm/kate/EditAudioActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "EditAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditAudioActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditAudioActivity;Landroid/app/Activity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$2;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$2;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$2;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 63
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$2;->this$0:Lcom/perm/kate/EditAudioActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/EditAudioActivity;->access$202(Lcom/perm/kate/EditAudioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/perm/kate/EditAudioActivity$2;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {p1}, Lcom/perm/kate/EditAudioActivity;->access$300(Lcom/perm/kate/EditAudioActivity;)V

    return-void
.end method
