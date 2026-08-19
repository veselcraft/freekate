.class Lcom/perm/kate/ChatMembersAdapter$3;
.super Ljava/lang/Thread;
.source "ChatMembersAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;

.field final synthetic val$member_id:J

.field final synthetic val$remove_member_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$3;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iput-wide p2, p0, Lcom/perm/kate/ChatMembersAdapter$3;->val$member_id:J

    iput-object p4, p0, Lcom/perm/kate/ChatMembersAdapter$3;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 218
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ChatMembersAdapter$3;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v1}, Lcom/perm/kate/ChatMembersAdapter;->access$400(Lcom/perm/kate/ChatMembersAdapter;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perm/kate/ChatMembersAdapter$3;->val$member_id:J

    iget-object v5, p0, Lcom/perm/kate/ChatMembersAdapter$3;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/ChatMembersAdapter$3;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v6}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->removeUserFromChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
