.class Lcom/perm/kate/EditChatActivity$4;
.super Ljava/lang/Thread;
.source "EditChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->getChatInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$4;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 242
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$4;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$600(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$4;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$4;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$500(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/EditChatActivity$4;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->getChat(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
