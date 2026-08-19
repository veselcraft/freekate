.class Lcom/perm/kate/MessageThreadFragment$39;
.super Lcom/perm/kate/photoupload/DocUploadCallback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method public static synthetic $r8$lambda$znR5KRXsID6S7-fJ7YyiVUabqPc(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/perm/kate/MessageThreadFragment$39;->lambda$success$0(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2189
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Lcom/perm/kate/photoupload/DocUploadCallback;-><init>()V

    return-void
.end method

.method private static synthetic lambda$success$0(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2204
    invoke-static {p0}, Lcom/perm/kate/MessageThreadFragment;->access$4800(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/io/File;)V
    .locals 2

    .line 2212
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2214
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$39$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MessageThreadFragment$39$1;-><init>(Lcom/perm/kate/MessageThreadFragment$39;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 13

    .line 2192
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 2193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->aid:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2196
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4500(Lcom/perm/kate/MessageThreadFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2200
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, p1, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v4

    sget-object v6, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    sget-object v7, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v9, p1, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    sget-object v11, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const-string v1, ""

    invoke-virtual/range {v0 .. v12}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;Ljava/lang/String;)V

    .line 2201
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1300(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2203
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2204
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$39$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/perm/kate/MessageThreadFragment$39$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2206
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4600(Lcom/perm/kate/MessageThreadFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
