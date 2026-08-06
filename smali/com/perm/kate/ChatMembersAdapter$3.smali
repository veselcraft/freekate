.class Lcom/perm/kate/ChatMembersAdapter$3;
.super Ljava/lang/Thread;
.source "ChatMembersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ChatMembersAdapter;->removeMemberFromChat(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;

.field final synthetic val$remove_member_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;JLcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ChatMembersAdapter;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$3;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iput-wide p2, p0, Lcom/perm/kate/ChatMembersAdapter$3;->val$uid:J

    iput-object p4, p0, Lcom/perm/kate/ChatMembersAdapter$3;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 126
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$3;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$100(Lcom/perm/kate/ChatMembersAdapter;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/ChatMembersAdapter$3;->val$uid:J

    iget-object v6, p0, Lcom/perm/kate/ChatMembersAdapter$3;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$3;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->removeUserFromChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 127
    return-void
.end method
