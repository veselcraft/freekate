.class Lcom/perm/kate/CreateChatActivity$2;
.super Ljava/lang/Thread;
.source "CreateChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CreateChatActivity;->createChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CreateChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/perm/kate/CreateChatActivity$2;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$2;->this$0:Lcom/perm/kate/CreateChatActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/CreateChatActivity;->showProgressBar(Z)V

    .line 57
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$2;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v1}, Lcom/perm/kate/CreateChatActivity;->access$100(Lcom/perm/kate/CreateChatActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CreateChatActivity$2;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v2}, Lcom/perm/kate/CreateChatActivity;->access$200(Lcom/perm/kate/CreateChatActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/CreateChatActivity$2;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v3}, Lcom/perm/kate/CreateChatActivity;->access$300(Lcom/perm/kate/CreateChatActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/CreateChatActivity$2;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->chatCreate(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 58
    return-void
.end method
