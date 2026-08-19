.class Lcom/perm/kate/EditChatActivity$22;
.super Ljava/lang/Thread;
.source "EditChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->deleteChatPhoto()V
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

    .line 486
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$600(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v1}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v3}, Lcom/perm/kate/EditChatActivity;->access$2700(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->deleteChatPhoto(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
