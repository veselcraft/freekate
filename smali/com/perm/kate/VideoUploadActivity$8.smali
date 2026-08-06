.class Lcom/perm/kate/VideoUploadActivity$8;
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
    .param p1, "this$0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 224
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$400(Lcom/perm/kate/VideoUploadActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$300(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1100(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1200(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$100(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1300(Lcom/perm/kate/VideoUploadActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->editVideo(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 225
    return-void
.end method
