.class Lcom/perm/kate/VideoUploadActivity$9;
.super Ljava/lang/Thread;
.source "VideoUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoUploadActivity;->saveEditedVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoUploadActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 273
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ","

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v2

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$400(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$400(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v10, v2

    .line 275
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$600(Lcom/perm/kate/VideoUploadActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$500(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1000(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1100(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1200(Lcom/perm/kate/VideoUploadActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v13, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual/range {v3 .. v13}, Lcom/perm/kate/session/Session;->editVideo(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
