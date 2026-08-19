.class Lcom/perm/kate/MessageThreadFragment$MultiUploader;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"


# instance fields
.field protected cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field i:I

.field resizeOption:I

.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field uris:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;I)V
    .locals 0

    .line 2846
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2843
    iput p1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    .line 2878
    new-instance p1, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;-><init>(Lcom/perm/kate/MessageThreadFragment$MultiUploader;)V

    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 2847
    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uris:Ljava/util/ArrayList;

    .line 2848
    iput p3, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->resizeOption:I

    return-void
.end method

.method static synthetic access$6300(Lcom/perm/kate/MessageThreadFragment$MultiUploader;)V
    .locals 0

    .line 2840
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uploadNextPhoto()V

    return-void
.end method

.method private uploadNextPhoto()V
    .locals 11

    .line 2857
    iget v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    .line 2858
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2859
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 2860
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    return-void

    .line 2863
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2865
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v2, 0x7f0f0519

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2866
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 2867
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kate.MessageThreadFragm"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v1, "image/"

    .line 2869
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2873
    :cond_2
    new-instance v0, Lcom/perm/kate/photoupload/MessageUploader;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget v5, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->resizeOption:I

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v9, v1, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    const/4 v1, 0x0

    .line 2874
    iput-boolean v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->cancel_notification:Z

    .line 2875
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    return-void

    .line 2870
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uploadNextPhoto()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 2852
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v1, 0x7f0f03e1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 2853
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uploadNextPhoto()V

    return-void
.end method
