.class Lcom/perm/kate/MessageThreadFragment$41;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/io/File;)V
    .locals 0

    .line 2227
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$41;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$41;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 2230
    new-instance p1, Lcom/perm/kate/photoupload/DocUploader;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$41;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$41;->val$file:Ljava/io/File;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$41;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v7, p2, Lcom/perm/kate/MessageThreadFragment;->voiceUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v8, "audio_message"

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    return-void
.end method
