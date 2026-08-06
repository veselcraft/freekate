.class Lcom/perm/kate/AudioFragment$10;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 462
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 463
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1300(Lcom/perm/kate/AudioFragment;)V

    .line 464
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 450
    iget-object v1, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v1, Lcom/perm/kate/AudioFragment;->upload_url:Ljava/lang/String;

    .line 451
    const-string v1, "Kate.AudioFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload_url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->upload_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v3}, Lcom/perm/kate/AudioFragment;->access$1100(Lcom/perm/kate/AudioFragment;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v3}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v4}, Lcom/perm/kate/AudioFragment;->access$1100(Lcom/perm/kate/AudioFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v4, v4, Lcom/perm/kate/AudioFragment;->upload_url:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/perm/kate/AudioFragment;->access$1200(Lcom/perm/kate/AudioFragment;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$1100(Lcom/perm/kate/AudioFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
