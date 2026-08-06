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
    .param p1, "this$0"    # Lcom/perm/kate/EditAudioActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 148
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditAudioActivity;->showProgressBar(Z)V

    .line 149
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditAudioActivity;->showProgressBar(Z)V

    .line 141
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$800(Lcom/perm/kate/EditAudioActivity;)V

    .line 142
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$7;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$900(Lcom/perm/kate/EditAudioActivity;)V

    .line 143
    return-void
.end method
