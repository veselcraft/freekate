.class Lcom/perm/kate/ChatMembersAdapter$5;
.super Ljava/lang/Thread;
.source "ChatMembersAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;

.field final synthetic val$is_admin:Z

.field final synthetic val$member_id:J

.field final synthetic val$remove_member_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;JZLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$5;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iput-wide p2, p0, Lcom/perm/kate/ChatMembersAdapter$5;->val$member_id:J

    iput-boolean p4, p0, Lcom/perm/kate/ChatMembersAdapter$5;->val$is_admin:Z

    iput-object p5, p0, Lcom/perm/kate/ChatMembersAdapter$5;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 235
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$5;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 236
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$5;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$400(Lcom/perm/kate/ChatMembersAdapter;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/perm/kate/ChatMembersAdapter$5;->val$member_id:J

    iget-boolean v7, p0, Lcom/perm/kate/ChatMembersAdapter$5;->val$is_admin:Z

    iget-object v8, p0, Lcom/perm/kate/ChatMembersAdapter$5;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$5;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->setChatMemberRole(JJZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 237
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$5;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
