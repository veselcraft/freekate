.class Lcom/perm/kate/EditChatActivity$13;
.super Ljava/lang/Thread;
.source "EditChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->addMemberToChat(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$13;->this$0:Lcom/perm/kate/EditChatActivity;

    iput-wide p2, p0, Lcom/perm/kate/EditChatActivity$13;->val$uid:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 315
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$13;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/EditChatActivity$13;->val$uid:J

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$13;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$1400(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/EditChatActivity$13;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->addUserToChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 316
    return-void
.end method
