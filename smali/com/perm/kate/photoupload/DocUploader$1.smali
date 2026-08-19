.class Lcom/perm/kate/photoupload/DocUploader$1;
.super Ljava/lang/Thread;
.source "DocUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/DocUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/DocUploader;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/perm/kate/photoupload/DocUploader$1;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 56
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader$1;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    iget-object v2, v1, Lcom/perm/kate/photoupload/DocUploader;->group_id:Ljava/lang/Long;

    iget-object v3, v1, Lcom/perm/kate/photoupload/DocUploader;->type:Ljava/lang/String;

    iget-object v4, v1, Lcom/perm/kate/photoupload/DocUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v1, v1, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/perm/kate/session/Session;->docsGetUploadServer(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
