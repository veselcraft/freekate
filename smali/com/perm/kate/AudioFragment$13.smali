.class Lcom/perm/kate/AudioFragment$13;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 594
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 595
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$2100(Lcom/perm/kate/AudioFragment;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/perm/kate/AudioFragment;->upload_url:Ljava/lang/String;

    .line 583
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload_url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment;->upload_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.AudioFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$1900(Lcom/perm/kate/AudioFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$1900(Lcom/perm/kate/AudioFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->upload_url:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/AudioFragment;->access$2000(Lcom/perm/kate/AudioFragment;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$1900(Lcom/perm/kate/AudioFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
