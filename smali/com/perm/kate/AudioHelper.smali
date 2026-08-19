.class public abstract Lcom/perm/kate/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# direct methods
.method public static requestAudio(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "audio/mp3"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0f045e

    .line 18
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method
