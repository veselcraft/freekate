.class Lcom/perm/kate/EditAudioActivity$7;
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

    .line 139
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 150
    iget-object p1, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 143
    iget-object p1, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {p1}, Lcom/perm/kate/EditAudioActivity;->access$800(Lcom/perm/kate/EditAudioActivity;)V

    .line 144
    iget-object p1, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {p1}, Lcom/perm/kate/EditAudioActivity;->access$900(Lcom/perm/kate/EditAudioActivity;)V

    return-void
.end method
