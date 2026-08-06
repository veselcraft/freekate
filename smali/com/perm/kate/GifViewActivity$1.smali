.class Lcom/perm/kate/GifViewActivity$1;
.super Ljava/lang/Thread;
.source "GifViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifViewActivity;->getVideoInThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GifViewActivity;

.field final synthetic val$doc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    iput-object p2, p0, Lcom/perm/kate/GifViewActivity$1;->val$doc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Lcom/perm/kate/GifViewActivity$1$1;

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GifViewActivity$1$1;-><init>(Lcom/perm/kate/GifViewActivity$1;Landroid/app/Activity;)V

    .line 131
    .local v0, "callback":Lcom/perm/kate/session/Callback;
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/GifViewActivity;->showProgressBar(Z)V

    .line 132
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity$1;->val$doc:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-virtual {v1, v2, v0, v3}, Lcom/perm/kate/session/Session;->getDocsById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 133
    return-void
.end method
