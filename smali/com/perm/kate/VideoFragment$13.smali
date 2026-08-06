.class Lcom/perm/kate/VideoFragment$13;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoFragment;->showVideoLinkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;

.field final synthetic val$et_message:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment$13;->val$et_message:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$13;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 544
    .local v7, "link":Ljava/lang/String;
    const/4 v3, 0x0

    .line 545
    .local v3, "gid":Ljava/lang/Long;
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-gez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 547
    :cond_0
    new-instance v0, Lcom/perm/kate/photoupload/VideoUploader;

    iget-object v2, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v2}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v4, v4, Lcom/perm/kate/VideoFragment;->videoUploadCallback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-direct {v0, v2, v1, v7, v4}, Lcom/perm/kate/photoupload/VideoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/photoupload/VideoUploadCallback;)V

    const-string v4, "all"

    const-string v5, "all"

    const/4 v6, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/photoupload/VideoUploader;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 548
    return-void
.end method
